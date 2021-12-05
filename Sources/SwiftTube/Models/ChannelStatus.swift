import Foundation
import Prch

/** JSON template for the status part of a channel. */
public struct ChannelStatus: Model {
  /** The long uploads status of this channel. See https://support.google.com/youtube/answer/71673 for more information. */
  public enum LongUploadsStatus: String, Codable, Equatable, CaseIterable {
    case longUploadsUnspecified
    case allowed
    case eligible
    case disallowed
  }

  /** Privacy status of the channel. */
  public enum PrivacyStatus: String, Codable, Equatable, CaseIterable {
    case `public`
    case unlisted
    case `private`
  }

  /** If true, then the user is linked to either a YouTube username or G+ account. Otherwise, the user doesn't have a public YouTube identity. */
  public var isLinked: Bool?

  /** The long uploads status of this channel. See https://support.google.com/youtube/answer/71673 for more information. */
  public var longUploadsStatus: LongUploadsStatus?

  public var madeForKids: Bool?

  /** Privacy status of the channel. */
  public var privacyStatus: PrivacyStatus?

  public var selfDeclaredMadeForKids: Bool?

  public init(isLinked: Bool? = nil, longUploadsStatus: LongUploadsStatus? = nil, madeForKids: Bool? = nil, privacyStatus: PrivacyStatus? = nil, selfDeclaredMadeForKids: Bool? = nil) {
    self.isLinked = isLinked
    self.longUploadsStatus = longUploadsStatus
    self.madeForKids = madeForKids
    self.privacyStatus = privacyStatus
    self.selfDeclaredMadeForKids = selfDeclaredMadeForKids
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    isLinked = try container.decodeIfPresent("isLinked")
    longUploadsStatus = try container.decodeIfPresent("longUploadsStatus")
    madeForKids = try container.decodeIfPresent("madeForKids")
    privacyStatus = try container.decodeIfPresent("privacyStatus")
    selfDeclaredMadeForKids = try container.decodeIfPresent("selfDeclaredMadeForKids")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(isLinked, forKey: "isLinked")
    try container.encodeIfPresent(longUploadsStatus, forKey: "longUploadsStatus")
    try container.encodeIfPresent(madeForKids, forKey: "madeForKids")
    try container.encodeIfPresent(privacyStatus, forKey: "privacyStatus")
    try container.encodeIfPresent(selfDeclaredMadeForKids, forKey: "selfDeclaredMadeForKids")
  }
}
