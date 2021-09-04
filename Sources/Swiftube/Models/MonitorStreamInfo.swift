import Foundation
import Prch

/** Settings and Info of the monitor stream */
public struct MonitorStreamInfo: Model {
  /** If you have set the enableMonitorStream property to true, then this property determines the length of the live broadcast delay. */
  public var broadcastStreamDelayMs: Int?

  /** HTML code that embeds a player that plays the monitor stream. */
  public var embedHtml: String?

  /** This value determines whether the monitor stream is enabled for the broadcast. If the monitor stream is enabled, then YouTube will broadcast the event content on a special stream intended only for the broadcaster's consumption. The broadcaster can use the stream to review the event content and also to identify the optimal times to insert cuepoints. You need to set this value to true if you intend to have a broadcast delay for your event. *Note:* This property cannot be updated once the broadcast is in the testing or live state. */
  public var enableMonitorStream: Bool?

  public init(broadcastStreamDelayMs: Int? = nil, embedHtml: String? = nil, enableMonitorStream: Bool? = nil) {
    self.broadcastStreamDelayMs = broadcastStreamDelayMs
    self.embedHtml = embedHtml
    self.enableMonitorStream = enableMonitorStream
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    broadcastStreamDelayMs = try container.decodeIfPresent("broadcastStreamDelayMs")
    embedHtml = try container.decodeIfPresent("embedHtml")
    enableMonitorStream = try container.decodeIfPresent("enableMonitorStream")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(broadcastStreamDelayMs, forKey: "broadcastStreamDelayMs")
    try container.encodeIfPresent(embedHtml, forKey: "embedHtml")
    try container.encodeIfPresent(enableMonitorStream, forKey: "enableMonitorStream")
  }
}
