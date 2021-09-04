import Foundation
import Prch

/** Basic details about a video category, such as its localized title. */
public struct VideoCategorySnippet: Model {
  public var assignable: Bool?

  /** The YouTube channel that created the video category. */
  public var channelId: String?

  /** The video category's title. */
  public var title: String?

  public init(assignable: Bool? = nil, channelId: String? = nil, title: String? = nil) {
    self.assignable = assignable
    self.channelId = channelId
    self.title = title
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    assignable = try container.decodeIfPresent("assignable")
    channelId = try container.decodeIfPresent("channelId")
    title = try container.decodeIfPresent("title")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(assignable, forKey: "assignable")
    try container.encodeIfPresent(channelId, forKey: "channelId")
    try container.encodeIfPresent(title, forKey: "title")
  }
}
