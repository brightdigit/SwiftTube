import Foundation
import Prch

/** A single tag suggestion with it's relevance information. */
public struct VideoSuggestionsTagSuggestion: Model {
  /** A set of video categories for which the tag is relevant. You can use this information to display appropriate tag suggestions based on the video category that the video uploader associates with the video. By default, tag suggestions are relevant for all categories if there are no restricts defined for the keyword. */
  public var categoryRestricts: [String]?

  /** The keyword tag suggested for the video. */
  public var tag: String?

  public init(categoryRestricts: [String]? = nil, tag: String? = nil) {
    self.categoryRestricts = categoryRestricts
    self.tag = tag
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    categoryRestricts = try container.decodeArrayIfPresent("categoryRestricts")
    tag = try container.decodeIfPresent("tag")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(categoryRestricts, forKey: "categoryRestricts")
    try container.encodeIfPresent(tag, forKey: "tag")
  }
}
