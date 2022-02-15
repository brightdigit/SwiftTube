import Prch
import SwiftTube
import XCTest

struct YouTubePlaylistRequest {
  internal init(apiKey: String, playlistID: String) {
    self.apiKey = apiKey
    self.playlistID = playlistID
  }

  let apiKey: String
  let playlistID: String
}

extension YouTubePlaylistRequest {
  init(settings: Settings) {
    precondition(settings.playlistID != nil || settings.apiKey != nil)
    self.init(apiKey: settings.apiKey!, playlistID: settings.playlistID!)
  }
}
