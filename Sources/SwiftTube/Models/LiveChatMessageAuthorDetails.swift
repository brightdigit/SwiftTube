import Foundation
import Prch

public struct LiveChatMessageAuthorDetails: Model {
  /** The YouTube channel ID. */
  public var channelId: String?

  /** The channel's URL. */
  public var channelUrl: String?

  /** The channel's display name. */
  public var displayName: String?

  /** Whether the author is a moderator of the live chat. */
  public var isChatModerator: Bool?

  /** Whether the author is the owner of the live chat. */
  public var isChatOwner: Bool?

  /** Whether the author is a sponsor of the live chat. */
  public var isChatSponsor: Bool?

  /** Whether the author's identity has been verified by YouTube. */
  public var isVerified: Bool?

  /** The channels's avatar URL. */
  public var profileImageUrl: String?

  public init(channelId: String? = nil, channelUrl: String? = nil, displayName: String? = nil, isChatModerator: Bool? = nil, isChatOwner: Bool? = nil, isChatSponsor: Bool? = nil, isVerified: Bool? = nil, profileImageUrl: String? = nil) {
    self.channelId = channelId
    self.channelUrl = channelUrl
    self.displayName = displayName
    self.isChatModerator = isChatModerator
    self.isChatOwner = isChatOwner
    self.isChatSponsor = isChatSponsor
    self.isVerified = isVerified
    self.profileImageUrl = profileImageUrl
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    channelId = try container.decodeIfPresent("channelId")
    channelUrl = try container.decodeIfPresent("channelUrl")
    displayName = try container.decodeIfPresent("displayName")
    isChatModerator = try container.decodeIfPresent("isChatModerator")
    isChatOwner = try container.decodeIfPresent("isChatOwner")
    isChatSponsor = try container.decodeIfPresent("isChatSponsor")
    isVerified = try container.decodeIfPresent("isVerified")
    profileImageUrl = try container.decodeIfPresent("profileImageUrl")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(channelId, forKey: "channelId")
    try container.encodeIfPresent(channelUrl, forKey: "channelUrl")
    try container.encodeIfPresent(displayName, forKey: "displayName")
    try container.encodeIfPresent(isChatModerator, forKey: "isChatModerator")
    try container.encodeIfPresent(isChatOwner, forKey: "isChatOwner")
    try container.encodeIfPresent(isChatSponsor, forKey: "isChatSponsor")
    try container.encodeIfPresent(isVerified, forKey: "isVerified")
    try container.encodeIfPresent(profileImageUrl, forKey: "profileImageUrl")
  }
}
