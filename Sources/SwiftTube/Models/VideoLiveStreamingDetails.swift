import Foundation
import Prch

/** Details about the live streaming metadata. */
public struct VideoLiveStreamingDetails: Model {
  /** The ID of the currently active live chat attached to this video. This field is filled only if the video is a currently live broadcast that has live chat. Once the broadcast transitions to complete this field will be removed and the live chat closed down. For persistent broadcasts that live chat id will no longer be tied to this video but rather to the new video being displayed at the persistent page. */
  public var activeLiveChatId: String?

  /** The time that the broadcast actually ended. This value will not be available until the broadcast is over. */
  public var actualEndTime: DateTime?

  /** The time that the broadcast actually started. This value will not be available until the broadcast begins. */
  public var actualStartTime: DateTime?

  /** The number of viewers currently watching the broadcast. The property and its value will be present if the broadcast has current viewers and the broadcast owner has not hidden the viewcount for the video. Note that YouTube stops tracking the number of concurrent viewers for a broadcast when the broadcast ends. So, this property would not identify the number of viewers watching an archived video of a live broadcast that already ended. */
  public var concurrentViewers: String?

  /** The time that the broadcast is scheduled to end. If the value is empty or the property is not present, then the broadcast is scheduled to contiue indefinitely. */
  public var scheduledEndTime: DateTime?

  /** The time that the broadcast is scheduled to begin. */
  public var scheduledStartTime: DateTime?

  public init(activeLiveChatId: String? = nil, actualEndTime: DateTime? = nil, actualStartTime: DateTime? = nil, concurrentViewers: String? = nil, scheduledEndTime: DateTime? = nil, scheduledStartTime: DateTime? = nil) {
    self.activeLiveChatId = activeLiveChatId
    self.actualEndTime = actualEndTime
    self.actualStartTime = actualStartTime
    self.concurrentViewers = concurrentViewers
    self.scheduledEndTime = scheduledEndTime
    self.scheduledStartTime = scheduledStartTime
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    activeLiveChatId = try container.decodeIfPresent("activeLiveChatId")
    actualEndTime = try container.decodeIfPresent("actualEndTime")
    actualStartTime = try container.decodeIfPresent("actualStartTime")
    concurrentViewers = try container.decodeIfPresent("concurrentViewers")
    scheduledEndTime = try container.decodeIfPresent("scheduledEndTime")
    scheduledStartTime = try container.decodeIfPresent("scheduledStartTime")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(activeLiveChatId, forKey: "activeLiveChatId")
    try container.encodeIfPresent(actualEndTime, forKey: "actualEndTime")
    try container.encodeIfPresent(actualStartTime, forKey: "actualStartTime")
    try container.encodeIfPresent(concurrentViewers, forKey: "concurrentViewers")
    try container.encodeIfPresent(scheduledEndTime, forKey: "scheduledEndTime")
    try container.encodeIfPresent(scheduledStartTime, forKey: "scheduledStartTime")
  }
}
