import Foundation
import OpenAPIRuntime
import Testing

@testable import SwiftTube

@Suite internal struct YouTubeClientTests {
  private static let playlistID = "PLtest"
  private static let playlistPath = "/youtube/v3/playlistItems"
  private static let videosPath = "/youtube/v3/videos"

  /// Builds a `YouTubeClient` whose generated client uses the supplied mock.
  private func makeClient(_ transport: MockTransport) -> YouTubeClient {
    let generated = Client(
      serverURL: YouTubeClient.serverURL,
      transport: transport
    )
    return YouTubeClient(apiKey: "FAKE_KEY", client: generated)
  }

  /// Two playlist pages (the first carrying `nextPageToken`) are followed, and
  /// a single batched `videos.list` call returns the details in order.
  @Test internal func followsPaginationAndBatchesVideos() async throws {
    let transport = MockTransport(responses: [
      Self.playlistPath: [Fixtures.playlistPage1, Fixtures.playlistPage2],
      Self.videosPath: [Fixtures.videos],
    ])
    let client = makeClient(transport)

    let result = try await client.videos(forPlaylistID: Self.playlistID)

    #expect(result.map(\.id) == ["vid1", "vid2", "vid3"])
    #expect(result.map(\.title) == ["First", "Second", "Third"])
    #expect(result.map(\.duration) == ["PT10M", "PT20M", "PT30M"])
    #expect(result.first?.standardThumbnailURL == "https://img/1.jpg")
    #expect(
      result.first?.publishedAt
        == Date(timeIntervalSince1970: 1_577_836_800)  // 2020-01-01T00:00:00Z
    )

    await assertCallCounts(transport, playlist: 2, videos: 1)
  }

  /// A playlist larger than one batch is chunked into multiple concurrent
  /// `videos.list` calls, and every video comes back exactly once.
  ///
  /// The two batches hit `/videos` concurrently and `MockTransport` replays
  /// per-path responses in call-arrival order, so which batch receives which
  /// fixture isn't deterministic — hence set membership rather than order.
  @Test internal func fansOutAcrossBatches() async throws {
    let ids = (1...51).map { "vid\($0)" }
    let transport = MockTransport(responses: [
      Self.playlistPath: [Fixtures.playlistPage(ids: ids)],
      Self.videosPath: [
        Fixtures.videos(ids: Array(ids[0..<50])),
        Fixtures.videos(ids: Array(ids[50...])),
      ],
    ])
    let client = makeClient(transport)

    let result = try await client.videos(forPlaylistID: Self.playlistID)

    #expect(result.count == ids.count)
    #expect(Set(result.compactMap(\.id)) == Set(ids))
    await assertCallCounts(transport, playlist: 1, videos: 2)
  }

  /// An empty playlist makes no `videos.list` call.
  @Test internal func emptyPlaylistSkipsVideosCall() async throws {
    let transport = MockTransport(responses: [
      Self.playlistPath: [Fixtures.playlistPage(ids: [])]
    ])
    let client = makeClient(transport)

    let result = try await client.videos(forPlaylistID: Self.playlistID)

    #expect(result.isEmpty)
    await assertCallCounts(transport, playlist: 1, videos: 0)
  }

  /// Within a batch, result order follows the `videos.list` response — not the
  /// requested id order. Pins the documented ordering contract.
  @Test internal func withinBatchOrderFollowsResponse() async throws {
    let transport = MockTransport(responses: [
      Self.playlistPath: [Fixtures.playlistPage(ids: ["vid1", "vid2", "vid3"])],
      Self.videosPath: [Fixtures.videos(ids: ["vid3", "vid1", "vid2"])],
    ])
    let client = makeClient(transport)

    let result = try await client.videos(forPlaylistID: Self.playlistID)

    #expect(result.map(\.id) == ["vid3", "vid1", "vid2"])
  }

  /// An undocumented (non-200) response surfaces as
  /// `ClientError.invalidResponse`.
  @Test internal func non200ResponseThrows() async throws {
    let transport = MockTransport(
      responses: [Self.playlistPath: ["{}"]],
      status: 500
    )
    let client = makeClient(transport)

    await #expect(throws: YouTubeClient.ClientError.invalidResponse) {
      _ = try await client.videos(forPlaylistID: Self.playlistID)
    }
  }

  /// Asserts how many times each endpoint was called.
  private func assertCallCounts(
    _ transport: MockTransport,
    playlist: Int,
    videos: Int
  ) async {
    let requestedURLs = await transport.requestedURLs
    let playlistCalls = requestedURLs.filter {
      $0.hasPrefix(Self.playlistPath)
    }
    let videoCalls = requestedURLs.filter {
      $0.hasPrefix(Self.videosPath)
    }
    #expect(playlistCalls.count == playlist)
    #expect(videoCalls.count == videos)
  }
}
