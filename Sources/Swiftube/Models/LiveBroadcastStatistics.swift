import Foundation
import Prch

/** Statistics about the live broadcast. These represent a snapshot of the values at the time of the request. Statistics are only returned for live broadcasts. */
public struct LiveBroadcastStatistics: Model {
  /** The total number of live chat messages currently on the broadcast. The property and its value will be present if the broadcast is public, has the live chat feature enabled, and has at least one message. Note that this field will not be filled after the broadcast ends. So this property would not identify the number of chat messages for an archived video of a completed live broadcast. */
  public var totalChatCount: String?

  public init(totalChatCount: String? = nil) {
    self.totalChatCount = totalChatCount
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    totalChatCount = try container.decodeIfPresent("totalChatCount")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(totalChatCount, forKey: "totalChatCount")
  }
}
