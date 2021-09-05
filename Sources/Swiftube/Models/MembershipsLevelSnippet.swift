import Foundation
import Prch

public struct MembershipsLevelSnippet: Model {
  /** The id of the channel that's offering channel memberships. */
  public var creatorChannelId: String?

  /** Details about the pricing level. */
  public var levelDetails: LevelDetails?

  public init(creatorChannelId: String? = nil, levelDetails: LevelDetails? = nil) {
    self.creatorChannelId = creatorChannelId
    self.levelDetails = levelDetails
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    creatorChannelId = try container.decodeIfPresent("creatorChannelId")
    levelDetails = try container.decodeIfPresent("levelDetails")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(creatorChannelId, forKey: "creatorChannelId")
    try container.encodeIfPresent(levelDetails, forKey: "levelDetails")
  }
}
