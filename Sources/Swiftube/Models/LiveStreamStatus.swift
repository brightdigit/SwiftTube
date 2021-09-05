import Foundation
import Prch

/** Brief description of the live stream status. */
public struct LiveStreamStatus: Model {
  /** Brief description of the live stream status. */
  public enum StreamStatus: String, Codable, Equatable, CaseIterable {
    case created
    case ready
    case active
    case inactive
    case error
  }

  /** The health status of the stream. */
  public var healthStatus: LiveStreamHealthStatus?

  public var streamStatus: StreamStatus?

  public init(healthStatus: LiveStreamHealthStatus? = nil, streamStatus: StreamStatus? = nil) {
    self.healthStatus = healthStatus
    self.streamStatus = streamStatus
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    healthStatus = try container.decodeIfPresent("healthStatus")
    streamStatus = try container.decodeIfPresent("streamStatus")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(healthStatus, forKey: "healthStatus")
    try container.encodeIfPresent(streamStatus, forKey: "streamStatus")
  }
}
