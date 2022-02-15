import Prch
import SwiftTube
import XCTest

class PlaylistTests: XCTestCase {
  func testVideos() throws {
    let settings = Settings.parseAll()
    let request = YouTubePlaylistRequest(settings: settings)
    let client = Client(api: YouTube.API(), session: URLSession.shared)
    let videos = try client.videos(fromRequest: request)
    XCTAssertGreaterThanOrEqual(videos.count, 117)
  }
}
