import Foundation
import Prch

public struct LiveChatSuperStickerDetails: Model {
  /** A rendered string that displays the fund amount and currency to the user. */
  public var amountDisplayString: String?

  /** The amount purchased by the user, in micros (1,750,000 micros = 1.75). */
  public var amountMicros: String?

  /** The currency in which the purchase was made. */
  public var currency: String?

  /** Information about the Super Sticker. */
  public var superStickerMetadata: SuperStickerMetadata?

  /** The tier in which the amount belongs. Lower amounts belong to lower tiers. The lowest tier is 1. */
  public var tier: Int?

  public init(amountDisplayString: String? = nil, amountMicros: String? = nil, currency: String? = nil, superStickerMetadata: SuperStickerMetadata? = nil, tier: Int? = nil) {
    self.amountDisplayString = amountDisplayString
    self.amountMicros = amountMicros
    self.currency = currency
    self.superStickerMetadata = superStickerMetadata
    self.tier = tier
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    amountDisplayString = try container.decodeIfPresent("amountDisplayString")
    amountMicros = try container.decodeIfPresent("amountMicros")
    currency = try container.decodeIfPresent("currency")
    superStickerMetadata = try container.decodeIfPresent("superStickerMetadata")
    tier = try container.decodeIfPresent("tier")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(amountDisplayString, forKey: "amountDisplayString")
    try container.encodeIfPresent(amountMicros, forKey: "amountMicros")
    try container.encodeIfPresent(currency, forKey: "currency")
    try container.encodeIfPresent(superStickerMetadata, forKey: "superStickerMetadata")
    try container.encodeIfPresent(tier, forKey: "tier")
  }
}
