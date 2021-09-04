import Foundation
import Prch

/** Freebase topic information related to the channel. */
public struct ChannelTopicDetails: Model {
  /** A list of Wikipedia URLs that describe the channel's content. */
  public var topicCategories: [String]?

  /** A list of Freebase topic IDs associated with the channel. You can retrieve information about each topic using the Freebase Topic API. */
  public var topicIds: [String]?

  public init(topicCategories: [String]? = nil, topicIds: [String]? = nil) {
    self.topicCategories = topicCategories
    self.topicIds = topicIds
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    topicCategories = try container.decodeArrayIfPresent("topicCategories")
    topicIds = try container.decodeArrayIfPresent("topicIds")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(topicCategories, forKey: "topicCategories")
    try container.encodeIfPresent(topicIds, forKey: "topicIds")
  }
}
