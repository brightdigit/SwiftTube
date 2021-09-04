import Foundation
import Prch

/** Details about the content of a YouTube Video. */
public struct VideoContentDetails: Model {
  /** The value of captions indicates whether the video has captions or not. */
  public enum Caption: String, Codable, Equatable, CaseIterable {
    case `true`
    case `false`
  }

  /** The value of definition indicates whether the video is available in high definition or only in standard definition. */
  public enum Definition: String, Codable, Equatable, CaseIterable {
    case sd
    case hd
  }

  /** Specifies the projection format of the video. */
  public enum Projection: String, Codable, Equatable, CaseIterable {
    case rectangular
    case _360 = "360"
  }

  /** The value of captions indicates whether the video has captions or not. */
  public var caption: Caption?

  /** Specifies the ratings that the video received under various rating schemes. */
  public var contentRating: ContentRating?

  /** The countryRestriction object contains information about the countries where a video is (or is not) viewable. */
  public var countryRestriction: AccessPolicy?

  /** The value of definition indicates whether the video is available in high definition or only in standard definition. */
  public var definition: Definition?

  /** The value of dimension indicates whether the video is available in 3D or in 2D. */
  public var dimension: String?

  /** The length of the video. The tag value is an ISO 8601 duration in the format PT#M#S, in which the letters PT indicate that the value specifies a period of time, and the letters M and S refer to length in minutes and seconds, respectively. The # characters preceding the M and S letters are both integers that specify the number of minutes (or seconds) of the video. For example, a value of PT15M51S indicates that the video is 15 minutes and 51 seconds long. */
  public var duration: String?

  /** Indicates whether the video uploader has provided a custom thumbnail image for the video. This property is only visible to the video uploader. */
  public var hasCustomThumbnail: Bool?

  /** The value of is_license_content indicates whether the video is licensed content. */
  public var licensedContent: Bool?

  /** Specifies the projection format of the video. */
  public var projection: Projection?

  /** The regionRestriction object contains information about the countries where a video is (or is not) viewable. The object will contain either the contentDetails.regionRestriction.allowed property or the contentDetails.regionRestriction.blocked property. */
  public var regionRestriction: VideoContentDetailsRegionRestriction?

  public init(caption: Caption? = nil, contentRating: ContentRating? = nil, countryRestriction: AccessPolicy? = nil, definition: Definition? = nil, dimension: String? = nil, duration: String? = nil, hasCustomThumbnail: Bool? = nil, licensedContent: Bool? = nil, projection: Projection? = nil, regionRestriction: VideoContentDetailsRegionRestriction? = nil) {
    self.caption = caption
    self.contentRating = contentRating
    self.countryRestriction = countryRestriction
    self.definition = definition
    self.dimension = dimension
    self.duration = duration
    self.hasCustomThumbnail = hasCustomThumbnail
    self.licensedContent = licensedContent
    self.projection = projection
    self.regionRestriction = regionRestriction
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    caption = try container.decodeIfPresent("caption")
    contentRating = try container.decodeIfPresent("contentRating")
    countryRestriction = try container.decodeIfPresent("countryRestriction")
    definition = try container.decodeIfPresent("definition")
    dimension = try container.decodeIfPresent("dimension")
    duration = try container.decodeIfPresent("duration")
    hasCustomThumbnail = try container.decodeIfPresent("hasCustomThumbnail")
    licensedContent = try container.decodeIfPresent("licensedContent")
    projection = try container.decodeIfPresent("projection")
    regionRestriction = try container.decodeIfPresent("regionRestriction")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(caption, forKey: "caption")
    try container.encodeIfPresent(contentRating, forKey: "contentRating")
    try container.encodeIfPresent(countryRestriction, forKey: "countryRestriction")
    try container.encodeIfPresent(definition, forKey: "definition")
    try container.encodeIfPresent(dimension, forKey: "dimension")
    try container.encodeIfPresent(duration, forKey: "duration")
    try container.encodeIfPresent(hasCustomThumbnail, forKey: "hasCustomThumbnail")
    try container.encodeIfPresent(licensedContent, forKey: "licensedContent")
    try container.encodeIfPresent(projection, forKey: "projection")
    try container.encodeIfPresent(regionRestriction, forKey: "regionRestriction")
  }
}
