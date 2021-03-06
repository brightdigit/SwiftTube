import Foundation
import Prch

public struct LiveChatTextMessageDetails: Model {
  /** The user's message. */
  public var messageText: String?

  public init(messageText: String? = nil) {
    self.messageText = messageText
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    messageText = try container.decodeIfPresent("messageText")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(messageText, forKey: "messageText")
  }
}
