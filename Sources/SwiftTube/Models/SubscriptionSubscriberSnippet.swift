import Foundation
import Prch

/** Basic details about a subscription's subscriber including title, description, channel ID and thumbnails. */
public struct SubscriptionSubscriberSnippet: Model {
  /** The channel ID of the subscriber. */
  public var channelId: String?

  /** The description of the subscriber. */
  public var description: String?

  /** Thumbnails for this subscriber. */
  public var thumbnails: ThumbnailDetails?

  /** The title of the subscriber. */
  public var title: String?

  public init(channelId: String? = nil, description: String? = nil, thumbnails: ThumbnailDetails? = nil, title: String? = nil) {
    self.channelId = channelId
    self.description = description
    self.thumbnails = thumbnails
    self.title = title
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    channelId = try container.decodeIfPresent("channelId")
    description = try container.decodeIfPresent("description")
    thumbnails = try container.decodeIfPresent("thumbnails")
    title = try container.decodeIfPresent("title")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(channelId, forKey: "channelId")
    try container.encodeIfPresent(description, forKey: "description")
    try container.encodeIfPresent(thumbnails, forKey: "thumbnails")
    try container.encodeIfPresent(title, forKey: "title")
  }
}
