import Foundation
import Prch

/** Basic broadcast information. */
public struct LiveBroadcastSnippet: Model {
  /** The date and time that the broadcast actually ended. This information is only available once the broadcast's state is complete. */
  public var actualEndTime: Date?

  /** The date and time that the broadcast actually started. This information is only available once the broadcast's state is live. */
  public var actualStartTime: Date?

  /** The ID that YouTube uses to uniquely identify the channel that is publishing the broadcast. */
  public var channelId: String?

  /** The broadcast's description. As with the title, you can set this field by modifying the broadcast resource or by setting the description field of the corresponding video resource. */
  public var description: String?

  /** Indicates whether this broadcast is the default broadcast. Internal only. */
  public var isDefaultBroadcast: Bool?

  /** The id of the live chat for this broadcast. */
  public var liveChatId: String?

  /** The date and time that the broadcast was added to YouTube's live broadcast schedule. */
  public var publishedAt: Date?

  /** The date and time that the broadcast is scheduled to end. */
  public var scheduledEndTime: Date?

  /** The date and time that the broadcast is scheduled to start. */
  public var scheduledStartTime: Date?

  /** A map of thumbnail images associated with the broadcast. For each nested object in this object, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  public var thumbnails: ThumbnailDetails?

  /** The broadcast's title. Note that the broadcast represents exactly one YouTube video. You can set this field by modifying the broadcast resource or by setting the title field of the corresponding video resource. */
  public var title: String?

  public init(actualEndTime: Date? = nil, actualStartTime: Date? = nil, channelId: String? = nil, description: String? = nil, isDefaultBroadcast: Bool? = nil, liveChatId: String? = nil, publishedAt: Date? = nil, scheduledEndTime: Date? = nil, scheduledStartTime: Date? = nil, thumbnails: ThumbnailDetails? = nil, title: String? = nil) {
    self.actualEndTime = actualEndTime
    self.actualStartTime = actualStartTime
    self.channelId = channelId
    self.description = description
    self.isDefaultBroadcast = isDefaultBroadcast
    self.liveChatId = liveChatId
    self.publishedAt = publishedAt
    self.scheduledEndTime = scheduledEndTime
    self.scheduledStartTime = scheduledStartTime
    self.thumbnails = thumbnails
    self.title = title
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    actualEndTime = try container.decodeIfPresent("actualEndTime")
    actualStartTime = try container.decodeIfPresent("actualStartTime")
    channelId = try container.decodeIfPresent("channelId")
    description = try container.decodeIfPresent("description")
    isDefaultBroadcast = try container.decodeIfPresent("isDefaultBroadcast")
    liveChatId = try container.decodeIfPresent("liveChatId")
    publishedAt = try container.decodeIfPresent("publishedAt")
    scheduledEndTime = try container.decodeIfPresent("scheduledEndTime")
    scheduledStartTime = try container.decodeIfPresent("scheduledStartTime")
    thumbnails = try container.decodeIfPresent("thumbnails")
    title = try container.decodeIfPresent("title")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(actualEndTime, forKey: "actualEndTime")
    try container.encodeIfPresent(actualStartTime, forKey: "actualStartTime")
    try container.encodeIfPresent(channelId, forKey: "channelId")
    try container.encodeIfPresent(description, forKey: "description")
    try container.encodeIfPresent(isDefaultBroadcast, forKey: "isDefaultBroadcast")
    try container.encodeIfPresent(liveChatId, forKey: "liveChatId")
    try container.encodeIfPresent(publishedAt, forKey: "publishedAt")
    try container.encodeIfPresent(scheduledEndTime, forKey: "scheduledEndTime")
    try container.encodeIfPresent(scheduledStartTime, forKey: "scheduledStartTime")
    try container.encodeIfPresent(thumbnails, forKey: "thumbnails")
    try container.encodeIfPresent(title, forKey: "title")
  }
}
