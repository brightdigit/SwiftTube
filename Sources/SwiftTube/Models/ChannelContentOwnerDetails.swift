import Foundation
import Prch

/** The contentOwnerDetails object encapsulates channel data that is relevant for YouTube Partners linked with the channel. */
public struct ChannelContentOwnerDetails: Model {
  /** The ID of the content owner linked to the channel. */
  public var contentOwner: String?

  /** The date and time when the channel was linked to the content owner. */
  public var timeLinked: Date?

  public init(contentOwner: String? = nil, timeLinked: Date? = nil) {
    self.contentOwner = contentOwner
    self.timeLinked = timeLinked
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    contentOwner = try container.decodeIfPresent("contentOwner")
    timeLinked = try container.decodeIfPresent("timeLinked")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(contentOwner, forKey: "contentOwner")
    try container.encodeIfPresent(timeLinked, forKey: "timeLinked")
  }
}
