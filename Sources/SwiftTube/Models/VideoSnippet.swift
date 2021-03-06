import Foundation
import Prch

/** Basic details about a video, including title, description, uploader, thumbnails and category. */
public struct VideoSnippet: Model {
  /** Indicates if the video is an upcoming/active live broadcast. Or it's "none" if the video is not an upcoming/active live broadcast. */
  public enum LiveBroadcastContent: String, Codable, Equatable, CaseIterable {
    case none
    case upcoming
    case live
    case completed
  }

  /** The YouTube video category associated with the video. */
  public var categoryId: String?

  /** The ID that YouTube uses to uniquely identify the channel that the video was uploaded to. */
  public var channelId: String?

  /** Channel title for the channel that the video belongs to. */
  public var channelTitle: String?

  /** The default_audio_language property specifies the language spoken in the video's default audio track. */
  public var defaultAudioLanguage: String?

  /** The language of the videos's default snippet. */
  public var defaultLanguage: String?

  /** The video's description. @mutable youtube.videos.insert youtube.videos.update */
  public var description: String?

  /** Indicates if the video is an upcoming/active live broadcast. Or it's "none" if the video is not an upcoming/active live broadcast. */
  public var liveBroadcastContent: LiveBroadcastContent?

  /** Localized snippet selected with the hl parameter. If no such localization exists, this field is populated with the default snippet. (Read-only) */
  public var localized: VideoLocalization?

  /** The date and time when the video was uploaded. */
  public var publishedAt: Date?

  /** A list of keyword tags associated with the video. Tags may contain spaces. */
  public var tags: [String]?

  /** A map of thumbnail images associated with the video. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  public var thumbnails: ThumbnailDetails?

  /** The video's title. @mutable youtube.videos.insert youtube.videos.update */
  public var title: String?

  public init(categoryId: String? = nil, channelId: String? = nil, channelTitle: String? = nil, defaultAudioLanguage: String? = nil, defaultLanguage: String? = nil, description: String? = nil, liveBroadcastContent: LiveBroadcastContent? = nil, localized: VideoLocalization? = nil, publishedAt: Date? = nil, tags: [String]? = nil, thumbnails: ThumbnailDetails? = nil, title: String? = nil) {
    self.categoryId = categoryId
    self.channelId = channelId
    self.channelTitle = channelTitle
    self.defaultAudioLanguage = defaultAudioLanguage
    self.defaultLanguage = defaultLanguage
    self.description = description
    self.liveBroadcastContent = liveBroadcastContent
    self.localized = localized
    self.publishedAt = publishedAt
    self.tags = tags
    self.thumbnails = thumbnails
    self.title = title
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    categoryId = try container.decodeIfPresent("categoryId")
    channelId = try container.decodeIfPresent("channelId")
    channelTitle = try container.decodeIfPresent("channelTitle")
    defaultAudioLanguage = try container.decodeIfPresent("defaultAudioLanguage")
    defaultLanguage = try container.decodeIfPresent("defaultLanguage")
    description = try container.decodeIfPresent("description")
    liveBroadcastContent = try container.decodeIfPresent("liveBroadcastContent")
    localized = try container.decodeIfPresent("localized")
    publishedAt = try container.decodeIfPresent("publishedAt")
    tags = try container.decodeArrayIfPresent("tags")
    thumbnails = try container.decodeIfPresent("thumbnails")
    title = try container.decodeIfPresent("title")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(categoryId, forKey: "categoryId")
    try container.encodeIfPresent(channelId, forKey: "channelId")
    try container.encodeIfPresent(channelTitle, forKey: "channelTitle")
    try container.encodeIfPresent(defaultAudioLanguage, forKey: "defaultAudioLanguage")
    try container.encodeIfPresent(defaultLanguage, forKey: "defaultLanguage")
    try container.encodeIfPresent(description, forKey: "description")
    try container.encodeIfPresent(liveBroadcastContent, forKey: "liveBroadcastContent")
    try container.encodeIfPresent(localized, forKey: "localized")
    try container.encodeIfPresent(publishedAt, forKey: "publishedAt")
    try container.encodeIfPresent(tags, forKey: "tags")
    try container.encodeIfPresent(thumbnails, forKey: "thumbnails")
    try container.encodeIfPresent(title, forKey: "title")
  }
}
