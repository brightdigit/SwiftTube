import Foundation
import Prch

/** DEPRECATED Region restriction of the video. */
public struct VideoContentDetailsRegionRestriction: Model {
  /** A list of region codes that identify countries where the video is viewable. If this property is present and a country is not listed in its value, then the video is blocked from appearing in that country. If this property is present and contains an empty list, the video is blocked in all countries. */
  public var allowed: [String]?

  /** A list of region codes that identify countries where the video is blocked. If this property is present and a country is not listed in its value, then the video is viewable in that country. If this property is present and contains an empty list, the video is viewable in all countries. */
  public var blocked: [String]?

  public init(allowed: [String]? = nil, blocked: [String]? = nil) {
    self.allowed = allowed
    self.blocked = blocked
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    allowed = try container.decodeArrayIfPresent("allowed")
    blocked = try container.decodeArrayIfPresent("blocked")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(allowed, forKey: "allowed")
    try container.encodeIfPresent(blocked, forKey: "blocked")
  }
}
