import Foundation
import Prch

public struct LiveChatModeratorSnippet: Model {
  /** The ID of the live chat this moderator can act on. */
  public var liveChatId: String?

  /** Details about the moderator. */
  public var moderatorDetails: ChannelProfileDetails?

  public init(liveChatId: String? = nil, moderatorDetails: ChannelProfileDetails? = nil) {
    self.liveChatId = liveChatId
    self.moderatorDetails = moderatorDetails
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    liveChatId = try container.decodeIfPresent("liveChatId")
    moderatorDetails = try container.decodeIfPresent("moderatorDetails")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(liveChatId, forKey: "liveChatId")
    try container.encodeIfPresent(moderatorDetails, forKey: "moderatorDetails")
  }
}
