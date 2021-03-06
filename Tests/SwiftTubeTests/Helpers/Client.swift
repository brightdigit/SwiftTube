import Foundation
import Prch
import SwiftTube

extension Client where APIType == YouTube.API {
  func playlistItems(fromRequest request: YouTubePlaylistRequest, withAccumulatingResult initialResult: AccumulatingResult<PlaylistItem>? = nil, _ completed: @escaping (Result<[PlaylistItem], ClientError>) -> Void) {
    var nextResult = initialResult?.items ?? .init()

    self.request(PlaylistItems.YoutubePlaylistItemsList.Request(fields: "items/snippet/resourceId/videoId,nextPageToken", key: request.apiKey, part: ["snippet"], maxResults: 50, pageToken: initialResult?.nextPageToken, playlistId: request.playlistID)) { result in
      let response: PlaylistItemListResponse
      switch result {
      case let .failure(error): completed(.failure(error)); return
      case .defaultResponse: return
      case let .success(cResponse): response = cResponse
      }
      if let items = response.items {
        nextResult += items
      }
      if let nextPageToken = response.nextPageToken {
        self.playlistItems(fromRequest: request, withAccumulatingResult: .init(nextPageToken: nextPageToken, items: nextResult), completed)
      } else {
        completed(.success(nextResult))
      }
    }
  }

  func videos(
    fromRequest request: YouTubePlaylistRequest,
    on queue: DispatchQueue = .global(),
    _ completed: @escaping (Result<[Video], Error>) -> Void
  ) {
    playlistItems(fromRequest: request) { result in
      let group = DispatchGroup()

      let playlistItems: [PlaylistItem]
      switch result {
      case let .success(pli): playlistItems = pli
      case let .failure(error): completed(.failure(error)); return
      }

      let requests = playlistItems
        .compactMap { $0.snippet?.resourceId?.videoId }
        .chunked(by: 50).map { ids in
          Videos.YoutubeVideosList.Request(fields: "items(id,contentDetails/duration,snippet/title)", key: request.apiKey, part: ["contentDetails", "snippet"], id: ids, pageToken: nil)
        }
      var results: [Result<Videos.YoutubeVideosList.Response.SuccessType, Error>?]
      results = .init(repeating: nil, count: requests.count)
      for (index, request) in requests.enumerated() {
        group.enter()

        self.request(request) {
          let newResult = Result(response: $0)
          results[index] = newResult
          group.leave()
        }
      }
      group.notify(queue: queue) {
        let cumulativeResult: Result<[Video], Error>
        cumulativeResult = results.cumulate { response in
          guard let items = response?.items else {
            throw ClientError.invalidResponse
          }
          return items
        }
        completed(cumulativeResult)
      }
    }
  }

  func videos(fromRequest request: YouTubePlaylistRequest) throws -> [Video] {
    let semaphore = DispatchSemaphore(value: 0)

    var result: Result<[Video], Error>!
    videos(fromRequest: request) {
      result = $0
      semaphore.signal()
    }
    semaphore.wait()
    return try result.get()
  }
}
