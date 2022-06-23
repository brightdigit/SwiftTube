import Foundation
import Prch

/** Basic details about a channel, including title, description and thumbnails. */
public struct ChannelSnippet: Model {
  /** The country of the channel. */
  public var country: String?

  /** The custom url of the channel. */
  public var customUrl: String?

  /** The language of the channel's default title and description. */
  public var defaultLanguage: String?

  /** The description of the channel. */
  public var description: String?

  /** Localized title and description, read-only. */
  public var localized: ChannelLocalization?

  /** The date and time that the channel was created. */
  public var publishedAt: Date?

  /** A map of thumbnail images associated with the channel. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. When displaying thumbnails in your application, make sure that your code uses the image URLs exactly as they are returned in API responses. For example, your application should not use the http domain instead of the https domain in a URL returned in an API response. Beginning in July 2018, channel thumbnail URLs will only be available in the https domain, which is how the URLs appear in API responses. After that time, you might see broken images in your application if it tries to load YouTube images from the http domain. Thumbnail images might be empty for newly created channels and might take up to one day to populate. */
  public var thumbnails: ThumbnailDetails?

  /** The channel's title. */
  public var title: String?

  public init(country: String? = nil, customUrl: String? = nil, defaultLanguage: String? = nil, description: String? = nil, localized: ChannelLocalization? = nil, publishedAt: Date? = nil, thumbnails: ThumbnailDetails? = nil, title: String? = nil) {
    self.country = country
    self.customUrl = customUrl
    self.defaultLanguage = defaultLanguage
    self.description = description
    self.localized = localized
    self.publishedAt = publishedAt
    self.thumbnails = thumbnails
    self.title = title
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    country = try container.decodeIfPresent("country")
    customUrl = try container.decodeIfPresent("customUrl")
    defaultLanguage = try container.decodeIfPresent("defaultLanguage")
    description = try container.decodeIfPresent("description")
    localized = try container.decodeIfPresent("localized")
    publishedAt = try container.decodeIfPresent("publishedAt")
    thumbnails = try container.decodeIfPresent("thumbnails")
    title = try container.decodeIfPresent("title")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(country, forKey: "country")
    try container.encodeIfPresent(customUrl, forKey: "customUrl")
    try container.encodeIfPresent(defaultLanguage, forKey: "defaultLanguage")
    try container.encodeIfPresent(description, forKey: "description")
    try container.encodeIfPresent(localized, forKey: "localized")
    try container.encodeIfPresent(publishedAt, forKey: "publishedAt")
    try container.encodeIfPresent(thumbnails, forKey: "thumbnails")
    try container.encodeIfPresent(title, forKey: "title")
  }
}
