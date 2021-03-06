import Foundation
import Prch

/** Statistics about a channel: number of subscribers, number of videos in the channel, etc. */
public struct ChannelStatistics: Model {
  /** The number of comments for the channel. */
  public var commentCount: String?

  /** Whether or not the number of subscribers is shown for this user. */
  public var hiddenSubscriberCount: Bool?

  /** The number of subscribers that the channel has. */
  public var subscriberCount: String?

  /** The number of videos uploaded to the channel. */
  public var videoCount: String?

  /** The number of times the channel has been viewed. */
  public var viewCount: String?

  public init(commentCount: String? = nil, hiddenSubscriberCount: Bool? = nil, subscriberCount: String? = nil, videoCount: String? = nil, viewCount: String? = nil) {
    self.commentCount = commentCount
    self.hiddenSubscriberCount = hiddenSubscriberCount
    self.subscriberCount = subscriberCount
    self.videoCount = videoCount
    self.viewCount = viewCount
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    commentCount = try container.decodeIfPresent("commentCount")
    hiddenSubscriberCount = try container.decodeIfPresent("hiddenSubscriberCount")
    subscriberCount = try container.decodeIfPresent("subscriberCount")
    videoCount = try container.decodeIfPresent("videoCount")
    viewCount = try container.decodeIfPresent("viewCount")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(commentCount, forKey: "commentCount")
    try container.encodeIfPresent(hiddenSubscriberCount, forKey: "hiddenSubscriberCount")
    try container.encodeIfPresent(subscriberCount, forKey: "subscriberCount")
    try container.encodeIfPresent(videoCount, forKey: "videoCount")
    try container.encodeIfPresent(viewCount, forKey: "viewCount")
  }
}
