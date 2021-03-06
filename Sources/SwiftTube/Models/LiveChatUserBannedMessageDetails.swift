import Foundation
import Prch

public struct LiveChatUserBannedMessageDetails: Model {
  /** The type of ban. */
  public enum BanType: String, Codable, Equatable, CaseIterable {
    case permanent
    case temporary
  }

  /** The duration of the ban. This property is only present if the banType is temporary. */
  public var banDurationSeconds: String?

  /** The type of ban. */
  public var banType: BanType?

  /** The details of the user that was banned. */
  public var bannedUserDetails: ChannelProfileDetails?

  public init(banDurationSeconds: String? = nil, banType: BanType? = nil, bannedUserDetails: ChannelProfileDetails? = nil) {
    self.banDurationSeconds = banDurationSeconds
    self.banType = banType
    self.bannedUserDetails = bannedUserDetails
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    banDurationSeconds = try container.decodeIfPresent("banDurationSeconds")
    banType = try container.decodeIfPresent("banType")
    bannedUserDetails = try container.decodeIfPresent("bannedUserDetails")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(banDurationSeconds, forKey: "banDurationSeconds")
    try container.encodeIfPresent(banType, forKey: "banType")
    try container.encodeIfPresent(bannedUserDetails, forKey: "bannedUserDetails")
  }
}
