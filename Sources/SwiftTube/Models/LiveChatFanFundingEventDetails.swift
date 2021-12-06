import Foundation
import Prch

public struct LiveChatFanFundingEventDetails: Model {
  /** A rendered string that displays the fund amount and currency to the user. */
  public var amountDisplayString: String?

  /** The amount of the fund. */
  public var amountMicros: String?

  /** The currency in which the fund was made. */
  public var currency: String?

  /** The comment added by the user to this fan funding event. */
  public var userComment: String?

  public init(amountDisplayString: String? = nil, amountMicros: String? = nil, currency: String? = nil, userComment: String? = nil) {
    self.amountDisplayString = amountDisplayString
    self.amountMicros = amountMicros
    self.currency = currency
    self.userComment = userComment
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    amountDisplayString = try container.decodeIfPresent("amountDisplayString")
    amountMicros = try container.decodeIfPresent("amountMicros")
    currency = try container.decodeIfPresent("currency")
    userComment = try container.decodeIfPresent("userComment")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(amountDisplayString, forKey: "amountDisplayString")
    try container.encodeIfPresent(amountMicros, forKey: "amountMicros")
    try container.encodeIfPresent(currency, forKey: "currency")
    try container.encodeIfPresent(userComment, forKey: "userComment")
  }
}
