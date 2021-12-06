import Foundation
import Prch

/** Basic details about a subscription, including title, description and thumbnails of the subscribed item. */
public struct SubscriptionSnippet: Model {
  /** The ID that YouTube uses to uniquely identify the subscriber's channel. */
  public var channelId: String?

  /** Channel title for the channel that the subscription belongs to. */
  public var channelTitle: String?

  /** The subscription's details. */
  public var description: String?

  /** The date and time that the subscription was created. */
  public var publishedAt: DateTime?

  /** The id object contains information about the channel that the user subscribed to. */
  public var resourceId: ResourceId?

  /** A map of thumbnail images associated with the video. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  public var thumbnails: ThumbnailDetails?

  /** The subscription's title. */
  public var title: String?

  public init(channelId: String? = nil, channelTitle: String? = nil, description: String? = nil, publishedAt: DateTime? = nil, resourceId: ResourceId? = nil, thumbnails: ThumbnailDetails? = nil, title: String? = nil) {
    self.channelId = channelId
    self.channelTitle = channelTitle
    self.description = description
    self.publishedAt = publishedAt
    self.resourceId = resourceId
    self.thumbnails = thumbnails
    self.title = title
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    channelId = try container.decodeIfPresent("channelId")
    channelTitle = try container.decodeIfPresent("channelTitle")
    description = try container.decodeIfPresent("description")
    publishedAt = try container.decodeIfPresent("publishedAt")
    resourceId = try container.decodeIfPresent("resourceId")
    thumbnails = try container.decodeIfPresent("thumbnails")
    title = try container.decodeIfPresent("title")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(channelId, forKey: "channelId")
    try container.encodeIfPresent(channelTitle, forKey: "channelTitle")
    try container.encodeIfPresent(description, forKey: "description")
    try container.encodeIfPresent(publishedAt, forKey: "publishedAt")
    try container.encodeIfPresent(resourceId, forKey: "resourceId")
    try container.encodeIfPresent(thumbnails, forKey: "thumbnails")
    try container.encodeIfPresent(title, forKey: "title")
  }
}
