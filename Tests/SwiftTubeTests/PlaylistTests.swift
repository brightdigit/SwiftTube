//
//  PlaylistTests.swift
//  
//
//  Created by Leo Dion on 2/14/22.
//

import XCTest
import SwiftTube
import Prch

typealias YouTubeVideo = SwiftTube.Video

struct YouTubePlaylistRequest {
  let apiKey: String
  let playlistID: String
}

public struct AccumulatingResult<T> {
  public let nextPageToken: String
  public let items: [T]
}

extension Sequence {

  func chunked(by distance: Int) -> [[Element]] {
    var result: [[Element]] = []
    var batch: [Element] = []

    for element in self {
      batch.append(element)

      if batch.count == distance {
        result.append(batch)
        batch = []
      }
    }

    if !batch.isEmpty {
      result.append(batch)
    }

    return result
  }

  func uniqueByKey<Key: Hashable, Value>() -> [Key: Value] where Element == (Key, Value) {
    return Dictionary(uniqueKeysWithValues: self)
  }

  func groupByKey<Key: Hashable, Value>() -> [Key: [Value]] where Element == (Key, Value) {
    return Dictionary(grouping: self, by: { $0.0 }).mapValues { $0.map(\.1) }
  }
}


extension Client where APIType == YouTube.API {
  func playlistItems(fromRequest request: YouTubePlaylistRequest, withAccumulatingResult initialResult: AccumulatingResult<PlaylistItem>? = nil, _ completed: @escaping (Result<[PlaylistItem], ClientError>) -> Void) {
    var nextResult = initialResult?.items ?? .init()

    self.request(PlaylistItems.YoutubePlaylistItemsList.Request(fields: "items/snippet/resourceId/videoId,nextPageToken", key: request.apiKey, part: ["snippet"], maxResults: 50, pageToken: initialResult?.nextPageToken, playlistId: request.playlistID)) { result in
      
      let response: PlaylistItemListResponse
      switch result {
      case let .failure(error): completed(.failure(error)); return
      case .defaultResponse(_, _): return
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

  func videos(fromRequest request: YouTubePlaylistRequest, on queue: DispatchQueue = .global(), _ completed: @escaping (Result<[YouTubeVideo], ClientError>) -> Void) {
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
      var results: [ClientResult<Videos.YoutubeVideosList.Response.SuccessType, Never>?]
      results = .init(repeating: nil, count: requests.count)
      for (index, request) in requests.enumerated() {
        group.enter()

        self.request(request) {
          results[index] = $0
          group.leave()
        }
      }
      group.notify(queue: queue) {
        do {
          let videos = try results.reduce([YouTubeVideo].init()) { partialResult, result in
            guard let videoListResponse = try result?.get() else {
              throw ClientError.invalidResponse
            }
            guard let items = videoListResponse.items else {
              throw ClientError.invalidResponse
            }
            return partialResult + items
          }
          completed(.success(videos))
        } catch let error as ClientError {
          completed(.failure(error))
        } catch {
          completed(.failure(.unknownError(error)))
        }
      }
    }
  }

  func videos(fromRequest request: YouTubePlaylistRequest) throws -> [YouTubeVideo] {
    let semaphore = DispatchSemaphore(value: 0)

    var result: Result<[YouTubeVideo], ClientError>!
    videos(fromRequest: request) {
      result = $0
      semaphore.signal()
    }
    semaphore.wait()
    return try result.get()
  }
}

class PlaylistTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
      
     
      
      let request = YouTubePlaylistRequest(apiKey: "", playlistID:  "")
      let client = Client(api: YouTube.API(), session: URLSession.shared)
      let videos = try client.videos(fromRequest: request)
      XCTAssertGreaterThanOrEqual(videos.count, 117)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
