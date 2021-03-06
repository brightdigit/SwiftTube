import Foundation
import Prch

public struct PlaylistPlayer: Model {
  /** An <iframe> tag that embeds a player that will play the playlist. */
  public var embedHtml: String?

  public init(embedHtml: String? = nil) {
    self.embedHtml = embedHtml
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    embedHtml = try container.decodeIfPresent("embedHtml")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(embedHtml, forKey: "embedHtml")
  }
}
