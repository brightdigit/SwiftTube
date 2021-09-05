import Foundation
import Prch

/** Internal representation of thumbnails for a YouTube resource. */
public struct ThumbnailDetails: Model {
  /** The high quality image for this resource. */
  public var high: Thumbnail?

  /** The maximum resolution quality image for this resource. */
  public var maxres: Thumbnail?

  /** The medium quality image for this resource. */
  public var medium: Thumbnail?

  /** The standard quality image for this resource. */
  public var standard: Thumbnail?

  public init(high: Thumbnail? = nil, maxres: Thumbnail? = nil, medium: Thumbnail? = nil, standard: Thumbnail? = nil) {
    self.high = high
    self.maxres = maxres
    self.medium = medium
    self.standard = standard
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    high = try container.decodeIfPresent("high")
    maxres = try container.decodeIfPresent("maxres")
    medium = try container.decodeIfPresent("medium")
    standard = try container.decodeIfPresent("standard")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(high, forKey: "high")
    try container.encodeIfPresent(maxres, forKey: "maxres")
    try container.encodeIfPresent(medium, forKey: "medium")
    try container.encodeIfPresent(standard, forKey: "standard")
  }
}
