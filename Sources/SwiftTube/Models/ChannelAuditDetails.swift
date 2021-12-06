import Foundation
import Prch

/** The auditDetails object encapsulates channel data that is relevant for YouTube Partners during the audit process. */
public struct ChannelAuditDetails: Model {
  /** Whether or not the channel respects the community guidelines. */
  public var communityGuidelinesGoodStanding: Bool?

  /** Whether or not the channel has any unresolved claims. */
  public var contentIdClaimsGoodStanding: Bool?

  /** Whether or not the channel has any copyright strikes. */
  public var copyrightStrikesGoodStanding: Bool?

  public init(communityGuidelinesGoodStanding: Bool? = nil, contentIdClaimsGoodStanding: Bool? = nil, copyrightStrikesGoodStanding: Bool? = nil) {
    self.communityGuidelinesGoodStanding = communityGuidelinesGoodStanding
    self.contentIdClaimsGoodStanding = contentIdClaimsGoodStanding
    self.copyrightStrikesGoodStanding = copyrightStrikesGoodStanding
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    communityGuidelinesGoodStanding = try container.decodeIfPresent("communityGuidelinesGoodStanding")
    contentIdClaimsGoodStanding = try container.decodeIfPresent("contentIdClaimsGoodStanding")
    copyrightStrikesGoodStanding = try container.decodeIfPresent("copyrightStrikesGoodStanding")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(communityGuidelinesGoodStanding, forKey: "communityGuidelinesGoodStanding")
    try container.encodeIfPresent(contentIdClaimsGoodStanding, forKey: "contentIdClaimsGoodStanding")
    try container.encodeIfPresent(copyrightStrikesGoodStanding, forKey: "copyrightStrikesGoodStanding")
  }
}
