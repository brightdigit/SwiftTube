import Foundation
import Prch

/** Basic details about a search result, including title, description and thumbnails of the item referenced by the search result. */
public struct SearchResultSnippet: Model {
  /** It indicates if the resource (video or channel) has upcoming/active live broadcast content. Or it's "none" if there is not any upcoming/active live broadcasts. */
  public enum LiveBroadcastContent: String, Codable, Equatable, CaseIterable {
    case none
    case upcoming
    case live
    case completed
  }

  /** The value that YouTube uses to uniquely identify the channel that published the resource that the search result identifies. */
  public var channelId: String?

  /** The title of the channel that published the resource that the search result identifies. */
  public var channelTitle: String?

  /** A description of the search result. */
  public var description: String?

  /** It indicates if the resource (video or channel) has upcoming/active live broadcast content. Or it's "none" if there is not any upcoming/active live broadcasts. */
  public var liveBroadcastContent: LiveBroadcastContent?

  /** The creation date and time of the resource that the search result identifies. */
  public var publishedAt: Date?

  /** A map of thumbnail images associated with the search result. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  public var thumbnails: ThumbnailDetails?

  /** The title of the search result. */
  public var title: String?

  public init(channelId: String? = nil, channelTitle: String? = nil, description: String? = nil, liveBroadcastContent: LiveBroadcastContent? = nil, publishedAt: Date? = nil, thumbnails: ThumbnailDetails? = nil, title: String? = nil) {
    self.channelId = channelId
    self.channelTitle = channelTitle
    self.description = description
    self.liveBroadcastContent = liveBroadcastContent
    self.publishedAt = publishedAt
    self.thumbnails = thumbnails
    self.title = title
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    channelId = try container.decodeIfPresent("channelId")
    channelTitle = try container.decodeIfPresent("channelTitle")
    description = try container.decodeIfPresent("description")
    liveBroadcastContent = try container.decodeIfPresent("liveBroadcastContent")
    publishedAt = try container.decodeIfPresent("publishedAt")
    thumbnails = try container.decodeIfPresent("thumbnails")
    title = try container.decodeIfPresent("title")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(channelId, forKey: "channelId")
    try container.encodeIfPresent(channelTitle, forKey: "channelTitle")
    try container.encodeIfPresent(description, forKey: "description")
    try container.encodeIfPresent(liveBroadcastContent, forKey: "liveBroadcastContent")
    try container.encodeIfPresent(publishedAt, forKey: "publishedAt")
    try container.encodeIfPresent(thumbnails, forKey: "thumbnails")
    try container.encodeIfPresent(title, forKey: "title")
  }
}
