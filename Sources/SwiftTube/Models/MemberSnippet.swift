import Foundation
import Prch

public struct MemberSnippet: Model {
  /** The id of the channel that's offering memberships. */
  public var creatorChannelId: String?

  /** Details about the member. */
  public var memberDetails: ChannelProfileDetails?

  /** Details about the user's membership. */
  public var membershipsDetails: MembershipsDetails?

  public init(creatorChannelId: String? = nil, memberDetails: ChannelProfileDetails? = nil, membershipsDetails: MembershipsDetails? = nil) {
    self.creatorChannelId = creatorChannelId
    self.memberDetails = memberDetails
    self.membershipsDetails = membershipsDetails
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    creatorChannelId = try container.decodeIfPresent("creatorChannelId")
    memberDetails = try container.decodeIfPresent("memberDetails")
    membershipsDetails = try container.decodeIfPresent("membershipsDetails")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(creatorChannelId, forKey: "creatorChannelId")
    try container.encodeIfPresent(memberDetails, forKey: "memberDetails")
    try container.encodeIfPresent(membershipsDetails, forKey: "membershipsDetails")
  }
}
