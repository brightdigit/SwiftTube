import Foundation
import Prch

public struct MembershipsDuration: Model {
  /** The date and time when the user became a continuous member across all levels. */
  public var memberSince: String?

  /** The cumulative time the user has been a member across all levels in complete months (the time is rounded down to the nearest integer). */
  public var memberTotalDurationMonths: Int?

  public init(memberSince: String? = nil, memberTotalDurationMonths: Int? = nil) {
    self.memberSince = memberSince
    self.memberTotalDurationMonths = memberTotalDurationMonths
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    memberSince = try container.decodeIfPresent("memberSince")
    memberTotalDurationMonths = try container.decodeIfPresent("memberTotalDurationMonths")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(memberSince, forKey: "memberSince")
    try container.encodeIfPresent(memberTotalDurationMonths, forKey: "memberTotalDurationMonths")
  }
}
