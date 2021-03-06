import Foundation
import Prch

/** A thumbnail is an image representing a YouTube resource. */
public struct Thumbnail: Model {
  /** (Optional) Height of the thumbnail image. */
  public var height: Int?

  /** The thumbnail image's URL. */
  public var url: String?

  /** (Optional) Width of the thumbnail image. */
  public var width: Int?

  public init(height: Int? = nil, url: String? = nil, width: Int? = nil) {
    self.height = height
    self.url = url
    self.width = width
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    height = try container.decodeIfPresent("height")
    url = try container.decodeIfPresent("url")
    width = try container.decodeIfPresent("width")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(height, forKey: "height")
    try container.encodeIfPresent(url, forKey: "url")
    try container.encodeIfPresent(width, forKey: "width")
  }
}
