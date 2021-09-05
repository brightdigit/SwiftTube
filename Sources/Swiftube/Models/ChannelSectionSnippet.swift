import Foundation
import Prch

/** Basic details about a channel section, including title, style and position. */
public struct ChannelSectionSnippet: Model {
  /** The style of the channel section. */
  public enum Style: String, Codable, Equatable, CaseIterable {
    case channelsectionStyleUnspecified
    case horizontalRow
    case verticalList
  }

  /** The type of the channel section. */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case channelsectionTypeUndefined
    case singlePlaylist
    case multiplePlaylists
    case popularUploads
    case recentUploads
    case likes
    case allPlaylists
    case likedPlaylists
    case recentPosts
    case recentActivity
    case liveEvents
    case upcomingEvents
    case completedEvents
    case multipleChannels
    case postedVideos
    case postedPlaylists
    case subscriptions
  }

  /** The ID that YouTube uses to uniquely identify the channel that published the channel section. */
  public var channelId: String?

  /** The language of the channel section's default title and description. */
  public var defaultLanguage: String?

  /** Localized title, read-only. */
  public var localized: ChannelSectionLocalization?

  /** The position of the channel section in the channel. */
  public var position: Int?

  /** The style of the channel section. */
  public var style: Style?

  /** The channel section's title for multiple_playlists and multiple_channels. */
  public var title: String?

  /** The type of the channel section. */
  public var type: `Type`?

  public init(channelId: String? = nil, defaultLanguage: String? = nil, localized: ChannelSectionLocalization? = nil, position: Int? = nil, style: Style? = nil, title: String? = nil, type: Type? = nil) {
    self.channelId = channelId
    self.defaultLanguage = defaultLanguage
    self.localized = localized
    self.position = position
    self.style = style
    self.title = title
    self.type = type
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    channelId = try container.decodeIfPresent("channelId")
    defaultLanguage = try container.decodeIfPresent("defaultLanguage")
    localized = try container.decodeIfPresent("localized")
    position = try container.decodeIfPresent("position")
    style = try container.decodeIfPresent("style")
    title = try container.decodeIfPresent("title")
    type = try container.decodeIfPresent("type")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(channelId, forKey: "channelId")
    try container.encodeIfPresent(defaultLanguage, forKey: "defaultLanguage")
    try container.encodeIfPresent(localized, forKey: "localized")
    try container.encodeIfPresent(position, forKey: "position")
    try container.encodeIfPresent(style, forKey: "style")
    try container.encodeIfPresent(title, forKey: "title")
    try container.encodeIfPresent(type, forKey: "type")
  }
}
