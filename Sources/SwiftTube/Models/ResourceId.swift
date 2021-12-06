import Foundation
import Prch

/** A resource id is a generic reference that points to another YouTube resource. */
public struct ResourceId: Model {
  /** The ID that YouTube uses to uniquely identify the referred resource, if that resource is a channel. This property is only present if the resourceId.kind value is youtube#channel. */
  public var channelId: String?

  /** The type of the API resource. */
  public var kind: String?

  /** The ID that YouTube uses to uniquely identify the referred resource, if that resource is a playlist. This property is only present if the resourceId.kind value is youtube#playlist. */
  public var playlistId: String?

  /** The ID that YouTube uses to uniquely identify the referred resource, if that resource is a video. This property is only present if the resourceId.kind value is youtube#video. */
  public var videoId: String?

  public init(channelId: String? = nil, kind: String? = nil, playlistId: String? = nil, videoId: String? = nil) {
    self.channelId = channelId
    self.kind = kind
    self.playlistId = playlistId
    self.videoId = videoId
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    channelId = try container.decodeIfPresent("channelId")
    kind = try container.decodeIfPresent("kind")
    playlistId = try container.decodeIfPresent("playlistId")
    videoId = try container.decodeIfPresent("videoId")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(channelId, forKey: "channelId")
    try container.encodeIfPresent(kind, forKey: "kind")
    try container.encodeIfPresent(playlistId, forKey: "playlistId")
    try container.encodeIfPresent(videoId, forKey: "videoId")
  }
}
