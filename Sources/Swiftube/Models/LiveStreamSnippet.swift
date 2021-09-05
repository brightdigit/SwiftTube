import Foundation
import Prch

public struct LiveStreamSnippet: Model {
  /** The ID that YouTube uses to uniquely identify the channel that is transmitting the stream. */
  public var channelId: String?

  /** The stream's description. The value cannot be longer than 10000 characters. */
  public var description: String?

  public var isDefaultStream: Bool?

  /** The date and time that the stream was created. */
  public var publishedAt: DateTime?

  /** The stream's title. The value must be between 1 and 128 characters long. */
  public var title: String?

  public init(channelId: String? = nil, description: String? = nil, isDefaultStream: Bool? = nil, publishedAt: DateTime? = nil, title: String? = nil) {
    self.channelId = channelId
    self.description = description
    self.isDefaultStream = isDefaultStream
    self.publishedAt = publishedAt
    self.title = title
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    channelId = try container.decodeIfPresent("channelId")
    description = try container.decodeIfPresent("description")
    isDefaultStream = try container.decodeIfPresent("isDefaultStream")
    publishedAt = try container.decodeIfPresent("publishedAt")
    title = try container.decodeIfPresent("title")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(channelId, forKey: "channelId")
    try container.encodeIfPresent(description, forKey: "description")
    try container.encodeIfPresent(isDefaultStream, forKey: "isDefaultStream")
    try container.encodeIfPresent(publishedAt, forKey: "publishedAt")
    try container.encodeIfPresent(title, forKey: "title")
  }
}
