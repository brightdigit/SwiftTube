import Foundation
import Prch

/** Branding properties for the watch. All deprecated. */
public struct WatchSettings: Model {
  /** The text color for the video watch page's branded area. */
  public var backgroundColor: String?

  /** An ID that uniquely identifies a playlist that displays next to the video player. */
  public var featuredPlaylistId: String?

  /** The background color for the video watch page's branded area. */
  public var textColor: String?

  public init(backgroundColor: String? = nil, featuredPlaylistId: String? = nil, textColor: String? = nil) {
    self.backgroundColor = backgroundColor
    self.featuredPlaylistId = featuredPlaylistId
    self.textColor = textColor
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    backgroundColor = try container.decodeIfPresent("backgroundColor")
    featuredPlaylistId = try container.decodeIfPresent("featuredPlaylistId")
    textColor = try container.decodeIfPresent("textColor")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(backgroundColor, forKey: "backgroundColor")
    try container.encodeIfPresent(featuredPlaylistId, forKey: "featuredPlaylistId")
    try container.encodeIfPresent(textColor, forKey: "textColor")
  }
}
