import Foundation
import Prch

public struct ChannelProfileDetails: Model {
  /** The YouTube channel ID. */
  public var channelId: String?

  /** The channel's URL. */
  public var channelUrl: String?

  /** The channel's display name. */
  public var displayName: String?

  /** The channels's avatar URL. */
  public var profileImageUrl: String?

  public init(channelId: String? = nil, channelUrl: String? = nil, displayName: String? = nil, profileImageUrl: String? = nil) {
    self.channelId = channelId
    self.channelUrl = channelUrl
    self.displayName = displayName
    self.profileImageUrl = profileImageUrl
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    channelId = try container.decodeIfPresent("channelId")
    channelUrl = try container.decodeIfPresent("channelUrl")
    displayName = try container.decodeIfPresent("displayName")
    profileImageUrl = try container.decodeIfPresent("profileImageUrl")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(channelId, forKey: "channelId")
    try container.encodeIfPresent(channelUrl, forKey: "channelUrl")
    try container.encodeIfPresent(displayName, forKey: "displayName")
    try container.encodeIfPresent(profileImageUrl, forKey: "profileImageUrl")
  }
}
