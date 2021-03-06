import Foundation
import Prch

public struct SuperChatEventSnippet: Model {
  /** The purchase amount, in micros of the purchase currency. e.g., 1 is represented as 1000000. */
  public var amountMicros: String?

  /** Channel id where the event occurred. */
  public var channelId: String?

  /** The text contents of the comment left by the user. */
  public var commentText: String?

  /** The date and time when the event occurred. */
  public var createdAt: Date?

  /** The currency in which the purchase was made. ISO 4217. */
  public var currency: String?

  /** A rendered string that displays the purchase amount and currency (e.g., "$1.00"). The string is rendered for the given language. */
  public var displayString: String?

  /** True if this event is a Super Sticker event. */
  public var isSuperStickerEvent: Bool?

  /** The tier for the paid message, which is based on the amount of money spent to purchase the message. */
  public var messageType: Int?

  /** If this event is a Super Sticker event, this field will contain metadata about the Super Sticker. */
  public var superStickerMetadata: SuperStickerMetadata?

  /** Details about the supporter. */
  public var supporterDetails: ChannelProfileDetails?

  public init(amountMicros: String? = nil, channelId: String? = nil, commentText: String? = nil, createdAt: Date? = nil, currency: String? = nil, displayString: String? = nil, isSuperStickerEvent: Bool? = nil, messageType: Int? = nil, superStickerMetadata: SuperStickerMetadata? = nil, supporterDetails: ChannelProfileDetails? = nil) {
    self.amountMicros = amountMicros
    self.channelId = channelId
    self.commentText = commentText
    self.createdAt = createdAt
    self.currency = currency
    self.displayString = displayString
    self.isSuperStickerEvent = isSuperStickerEvent
    self.messageType = messageType
    self.superStickerMetadata = superStickerMetadata
    self.supporterDetails = supporterDetails
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    amountMicros = try container.decodeIfPresent("amountMicros")
    channelId = try container.decodeIfPresent("channelId")
    commentText = try container.decodeIfPresent("commentText")
    createdAt = try container.decodeIfPresent("createdAt")
    currency = try container.decodeIfPresent("currency")
    displayString = try container.decodeIfPresent("displayString")
    isSuperStickerEvent = try container.decodeIfPresent("isSuperStickerEvent")
    messageType = try container.decodeIfPresent("messageType")
    superStickerMetadata = try container.decodeIfPresent("superStickerMetadata")
    supporterDetails = try container.decodeIfPresent("supporterDetails")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(amountMicros, forKey: "amountMicros")
    try container.encodeIfPresent(channelId, forKey: "channelId")
    try container.encodeIfPresent(commentText, forKey: "commentText")
    try container.encodeIfPresent(createdAt, forKey: "createdAt")
    try container.encodeIfPresent(currency, forKey: "currency")
    try container.encodeIfPresent(displayString, forKey: "displayString")
    try container.encodeIfPresent(isSuperStickerEvent, forKey: "isSuperStickerEvent")
    try container.encodeIfPresent(messageType, forKey: "messageType")
    try container.encodeIfPresent(superStickerMetadata, forKey: "superStickerMetadata")
    try container.encodeIfPresent(supporterDetails, forKey: "supporterDetails")
  }
}
