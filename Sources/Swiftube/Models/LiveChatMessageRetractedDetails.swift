import Foundation
import Prch

public struct LiveChatMessageRetractedDetails: Model {
  public var retractedMessageId: String?

  public init(retractedMessageId: String? = nil) {
    self.retractedMessageId = retractedMessageId
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    retractedMessageId = try container.decodeIfPresent("retractedMessageId")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(retractedMessageId, forKey: "retractedMessageId")
  }
}
