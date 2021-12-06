import Foundation
import Prch

public struct SuperStickerMetadata: Model {
  /** Internationalized alt text that describes the sticker image and any animation associated with it. */
  public var altText: String?

  /** Specifies the localization language in which the alt text is returned. */
  public var altTextLanguage: String?

  /** Unique identifier of the Super Sticker. This is a shorter form of the alt_text that includes pack name and a recognizable characteristic of the sticker. */
  public var stickerId: String?

  public init(altText: String? = nil, altTextLanguage: String? = nil, stickerId: String? = nil) {
    self.altText = altText
    self.altTextLanguage = altTextLanguage
    self.stickerId = stickerId
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    altText = try container.decodeIfPresent("altText")
    altTextLanguage = try container.decodeIfPresent("altTextLanguage")
    stickerId = try container.decodeIfPresent("stickerId")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(altText, forKey: "altText")
    try container.encodeIfPresent(altTextLanguage, forKey: "altTextLanguage")
    try container.encodeIfPresent(stickerId, forKey: "stickerId")
  }
}
