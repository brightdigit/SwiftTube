import Foundation
import Prch

/** Basic details about an activity, including title, description, thumbnails, activity type and group. Next ID: 12 */
public struct ActivitySnippet: Model {
  /** The type of activity that the resource describes. */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case typeUnspecified
    case upload
    case like
    case favorite
    case comment
    case subscription
    case playlistItem
    case recommendation
    case bulletin
    case social
    case channelItem
    case promotedItem
  }

  /** The ID that YouTube uses to uniquely identify the channel associated with the activity. */
  public var channelId: String?

  /** Channel title for the channel responsible for this activity */
  public var channelTitle: String?

  /** The description of the resource primarily associated with the activity. @mutable youtube.activities.insert */
  public var description: String?

  /** The group ID associated with the activity. A group ID identifies user events that are associated with the same user and resource. For example, if a user rates a video and marks the same video as a favorite, the entries for those events would have the same group ID in the user's activity feed. In your user interface, you can avoid repetition by grouping events with the same groupId value. */
  public var groupId: String?

  /** The date and time that the video was uploaded. */
  public var publishedAt: DateTime?

  /** A map of thumbnail images associated with the resource that is primarily associated with the activity. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  public var thumbnails: ThumbnailDetails?

  /** The title of the resource primarily associated with the activity. */
  public var title: String?

  /** The type of activity that the resource describes. */
  public var type: `Type`?

  public init(channelId: String? = nil, channelTitle: String? = nil, description: String? = nil, groupId: String? = nil, publishedAt: DateTime? = nil, thumbnails: ThumbnailDetails? = nil, title: String? = nil, type: Type? = nil) {
    self.channelId = channelId
    self.channelTitle = channelTitle
    self.description = description
    self.groupId = groupId
    self.publishedAt = publishedAt
    self.thumbnails = thumbnails
    self.title = title
    self.type = type
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    channelId = try container.decodeIfPresent("channelId")
    channelTitle = try container.decodeIfPresent("channelTitle")
    description = try container.decodeIfPresent("description")
    groupId = try container.decodeIfPresent("groupId")
    publishedAt = try container.decodeIfPresent("publishedAt")
    thumbnails = try container.decodeIfPresent("thumbnails")
    title = try container.decodeIfPresent("title")
    type = try container.decodeIfPresent("type")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(channelId, forKey: "channelId")
    try container.encodeIfPresent(channelTitle, forKey: "channelTitle")
    try container.encodeIfPresent(description, forKey: "description")
    try container.encodeIfPresent(groupId, forKey: "groupId")
    try container.encodeIfPresent(publishedAt, forKey: "publishedAt")
    try container.encodeIfPresent(thumbnails, forKey: "thumbnails")
    try container.encodeIfPresent(title, forKey: "title")
    try container.encodeIfPresent(type, forKey: "type")
  }
}
