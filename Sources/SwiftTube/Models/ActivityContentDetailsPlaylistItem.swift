import Foundation
import Prch

/** Information about a new playlist item. */
public struct ActivityContentDetailsPlaylistItem: Model {
  /** The value that YouTube uses to uniquely identify the playlist. */
  public var playlistId: String?

  /** ID of the item within the playlist. */
  public var playlistItemId: String?

  /** The resourceId object contains information about the resource that was added to the playlist. */
  public var resourceId: ResourceId?

  public init(playlistId: String? = nil, playlistItemId: String? = nil, resourceId: ResourceId? = nil) {
    self.playlistId = playlistId
    self.playlistItemId = playlistItemId
    self.resourceId = resourceId
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    playlistId = try container.decodeIfPresent("playlistId")
    playlistItemId = try container.decodeIfPresent("playlistItemId")
    resourceId = try container.decodeIfPresent("resourceId")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(playlistId, forKey: "playlistId")
    try container.encodeIfPresent(playlistItemId, forKey: "playlistItemId")
    try container.encodeIfPresent(resourceId, forKey: "resourceId")
  }
}
