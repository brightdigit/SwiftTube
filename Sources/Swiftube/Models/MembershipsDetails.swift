import Foundation
import Prch

public struct MembershipsDetails: Model {
  /** Ids of all levels that the user has access to. This includes the currently active level and all other levels that are included because of a higher purchase. */
  public var accessibleLevels: [String]?

  /** Id of the highest level that the user has access to at the moment. */
  public var highestAccessibleLevel: String?

  /** Display name for the highest level that the user has access to at the moment. */
  public var highestAccessibleLevelDisplayName: String?

  /** Data about memberships duration without taking into consideration pricing levels. */
  public var membershipsDuration: MembershipsDuration?

  /** Data about memberships duration on particular pricing levels. */
  public var membershipsDurationAtLevels: [MembershipsDurationAtLevel]?

  public init(accessibleLevels: [String]? = nil, highestAccessibleLevel: String? = nil, highestAccessibleLevelDisplayName: String? = nil, membershipsDuration: MembershipsDuration? = nil, membershipsDurationAtLevels: [MembershipsDurationAtLevel]? = nil) {
    self.accessibleLevels = accessibleLevels
    self.highestAccessibleLevel = highestAccessibleLevel
    self.highestAccessibleLevelDisplayName = highestAccessibleLevelDisplayName
    self.membershipsDuration = membershipsDuration
    self.membershipsDurationAtLevels = membershipsDurationAtLevels
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    accessibleLevels = try container.decodeArrayIfPresent("accessibleLevels")
    highestAccessibleLevel = try container.decodeIfPresent("highestAccessibleLevel")
    highestAccessibleLevelDisplayName = try container.decodeIfPresent("highestAccessibleLevelDisplayName")
    membershipsDuration = try container.decodeIfPresent("membershipsDuration")
    membershipsDurationAtLevels = try container.decodeArrayIfPresent("membershipsDurationAtLevels")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(accessibleLevels, forKey: "accessibleLevels")
    try container.encodeIfPresent(highestAccessibleLevel, forKey: "highestAccessibleLevel")
    try container.encodeIfPresent(highestAccessibleLevelDisplayName, forKey: "highestAccessibleLevelDisplayName")
    try container.encodeIfPresent(membershipsDuration, forKey: "membershipsDuration")
    try container.encodeIfPresent(membershipsDurationAtLevels, forKey: "membershipsDurationAtLevels")
  }
}
