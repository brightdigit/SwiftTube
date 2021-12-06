import Foundation
import Prch

public struct LiveChatMemberMilestoneChatDetails: Model {
  /** The name of the Level at which the viever is a member. The Level names are defined by the YouTube channel offering the Membership. In some situations this field isn't filled. */
  public var memberLevelName: String?

  /** The total amount of months (rounded up) the viewer has been a member that granted them this Member Milestone Chat. This is the same number of months as is being displayed to YouTube users. */
  public var memberMonth: Int?

  /** The comment added by the member to this Member Milestone Chat. This field is empty for messages without a comment from the member. */
  public var userComment: String?

  public init(memberLevelName: String? = nil, memberMonth: Int? = nil, userComment: String? = nil) {
    self.memberLevelName = memberLevelName
    self.memberMonth = memberMonth
    self.userComment = userComment
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    memberLevelName = try container.decodeIfPresent("memberLevelName")
    memberMonth = try container.decodeIfPresent("memberMonth")
    userComment = try container.decodeIfPresent("userComment")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(memberLevelName, forKey: "memberLevelName")
    try container.encodeIfPresent(memberMonth, forKey: "memberMonth")
    try container.encodeIfPresent(userComment, forKey: "userComment")
  }
}
