import Foundation
import Prch

/** Playlist localization setting */
public struct PlaylistLocalization: Model {
  /** The localized strings for playlist's description. */
  public var description: String?

  /** The localized strings for playlist's title. */
  public var title: String?

  public init(description: String? = nil, title: String? = nil) {
    self.description = description
    self.title = title
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    description = try container.decodeIfPresent("description")
    title = try container.decodeIfPresent("title")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(description, forKey: "description")
    try container.encodeIfPresent(title, forKey: "title")
  }
}
