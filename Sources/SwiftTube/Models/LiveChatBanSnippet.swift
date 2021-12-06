import Foundation
import Prch

public struct LiveChatBanSnippet: Model {
  /** The type of ban. */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case liveChatBanTypeUnspecified
    case permanent
    case temporary
  }

  /** The duration of a ban, only filled if the ban has type TEMPORARY. */
  public var banDurationSeconds: String?

  public var bannedUserDetails: ChannelProfileDetails?

  /** The chat this ban is pertinent to. */
  public var liveChatId: String?

  /** The type of ban. */
  public var type: `Type`?

  public init(banDurationSeconds: String? = nil, bannedUserDetails: ChannelProfileDetails? = nil, liveChatId: String? = nil, type: Type? = nil) {
    self.banDurationSeconds = banDurationSeconds
    self.bannedUserDetails = bannedUserDetails
    self.liveChatId = liveChatId
    self.type = type
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    banDurationSeconds = try container.decodeIfPresent("banDurationSeconds")
    bannedUserDetails = try container.decodeIfPresent("bannedUserDetails")
    liveChatId = try container.decodeIfPresent("liveChatId")
    type = try container.decodeIfPresent("type")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(banDurationSeconds, forKey: "banDurationSeconds")
    try container.encodeIfPresent(bannedUserDetails, forKey: "bannedUserDetails")
    try container.encodeIfPresent(liveChatId, forKey: "liveChatId")
    try container.encodeIfPresent(type, forKey: "type")
  }
}
