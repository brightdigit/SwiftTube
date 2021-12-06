import Foundation
import Prch

public struct LiveChatMessageDeletedDetails: Model {
  public var deletedMessageId: String?

  public init(deletedMessageId: String? = nil) {
    self.deletedMessageId = deletedMessageId
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    deletedMessageId = try container.decodeIfPresent("deletedMessageId")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(deletedMessageId, forKey: "deletedMessageId")
  }
}
