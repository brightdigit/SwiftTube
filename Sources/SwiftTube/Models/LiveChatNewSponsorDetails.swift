import Foundation
import Prch

public struct LiveChatNewSponsorDetails: Model {
  /** If the viewer just had upgraded from a lower level. For viewers that were not members at the time of purchase, this field is false. */
  public var isUpgrade: Bool?

  /** The name of the Level that the viewer just had joined. The Level names are defined by the YouTube channel offering the Membership. In some situations this field isn't filled. */
  public var memberLevelName: String?

  public init(isUpgrade: Bool? = nil, memberLevelName: String? = nil) {
    self.isUpgrade = isUpgrade
    self.memberLevelName = memberLevelName
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    isUpgrade = try container.decodeIfPresent("isUpgrade")
    memberLevelName = try container.decodeIfPresent("memberLevelName")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(isUpgrade, forKey: "isUpgrade")
    try container.encodeIfPresent(memberLevelName, forKey: "memberLevelName")
  }
}
