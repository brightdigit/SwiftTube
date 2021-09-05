import Foundation
import Prch

/** Freebase topic information related to the video. */
public struct VideoTopicDetails: Model {
  /** Similar to topic_id, except that these topics are merely relevant to the video. These are topics that may be mentioned in, or appear in the video. You can retrieve information about each topic using Freebase Topic API. */
  public var relevantTopicIds: [String]?

  /** A list of Wikipedia URLs that provide a high-level description of the video's content. */
  public var topicCategories: [String]?

  /** A list of Freebase topic IDs that are centrally associated with the video. These are topics that are centrally featured in the video, and it can be said that the video is mainly about each of these. You can retrieve information about each topic using the < a href="http://wiki.freebase.com/wiki/Topic_API">Freebase Topic API. */
  public var topicIds: [String]?

  public init(relevantTopicIds: [String]? = nil, topicCategories: [String]? = nil, topicIds: [String]? = nil) {
    self.relevantTopicIds = relevantTopicIds
    self.topicCategories = topicCategories
    self.topicIds = topicIds
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    relevantTopicIds = try container.decodeArrayIfPresent("relevantTopicIds")
    topicCategories = try container.decodeArrayIfPresent("topicCategories")
    topicIds = try container.decodeArrayIfPresent("topicIds")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(relevantTopicIds, forKey: "relevantTopicIds")
    try container.encodeIfPresent(topicCategories, forKey: "topicCategories")
    try container.encodeIfPresent(topicIds, forKey: "topicIds")
  }
}
