import Foundation
import Prch

/** Describes a temporal position of a visual widget inside a video. */
public struct InvideoTiming: Model {
  /** Describes a timing type. If the value is offsetFromStart, then the offsetMs field represents an offset from the start of the video. If the value is offsetFromEnd, then the offsetMs field represents an offset from the end of the video. */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case offsetFromStart
    case offsetFromEnd
  }

  /** Defines the duration in milliseconds for which the promotion should be displayed. If missing, the client should use the default. */
  public var durationMs: String?

  /** Defines the time at which the promotion will appear. Depending on the value of type the value of the offsetMs field will represent a time offset from the start or from the end of the video, expressed in milliseconds. */
  public var offsetMs: String?

  /** Describes a timing type. If the value is offsetFromStart, then the offsetMs field represents an offset from the start of the video. If the value is offsetFromEnd, then the offsetMs field represents an offset from the end of the video. */
  public var type: `Type`?

  public init(durationMs: String? = nil, offsetMs: String? = nil, type: Type? = nil) {
    self.durationMs = durationMs
    self.offsetMs = offsetMs
    self.type = type
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    durationMs = try container.decodeIfPresent("durationMs")
    offsetMs = try container.decodeIfPresent("offsetMs")
    type = try container.decodeIfPresent("type")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(durationMs, forKey: "durationMs")
    try container.encodeIfPresent(offsetMs, forKey: "offsetMs")
    try container.encodeIfPresent(type, forKey: "type")
  }
}
