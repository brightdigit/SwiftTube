import Foundation
import Prch

/** Player to be used for a video playback. */
public struct VideoPlayer: Model {
  public var embedHeight: String?

  /** An <iframe> tag that embeds a player that will play the video. */
  public var embedHtml: String?

  /** The embed width */
  public var embedWidth: String?

  public init(embedHeight: String? = nil, embedHtml: String? = nil, embedWidth: String? = nil) {
    self.embedHeight = embedHeight
    self.embedHtml = embedHtml
    self.embedWidth = embedWidth
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    embedHeight = try container.decodeIfPresent("embedHeight")
    embedHtml = try container.decodeIfPresent("embedHtml")
    embedWidth = try container.decodeIfPresent("embedWidth")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(embedHeight, forKey: "embedHeight")
    try container.encodeIfPresent(embedHtml, forKey: "embedHtml")
    try container.encodeIfPresent(embedWidth, forKey: "embedWidth")
  }
}
