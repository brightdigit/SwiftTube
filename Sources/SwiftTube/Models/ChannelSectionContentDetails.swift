import Foundation
import Prch

/** Details about a channelsection, including playlists and channels. */
public struct ChannelSectionContentDetails: Model {
  /** The channel ids for type multiple_channels. */
  public var channels: [String]?

  /** The playlist ids for type single_playlist and multiple_playlists. For singlePlaylist, only one playlistId is allowed. */
  public var playlists: [String]?

  public init(channels: [String]? = nil, playlists: [String]? = nil) {
    self.channels = channels
    self.playlists = playlists
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    channels = try container.decodeArrayIfPresent("channels")
    playlists = try container.decodeArrayIfPresent("playlists")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(channels, forKey: "channels")
    try container.encodeIfPresent(playlists, forKey: "playlists")
  }
}
