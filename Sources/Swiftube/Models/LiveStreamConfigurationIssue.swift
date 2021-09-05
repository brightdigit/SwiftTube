import Foundation
import Prch

public struct LiveStreamConfigurationIssue: Model {
  /** How severe this issue is to the stream. */
  public enum Severity: String, Codable, Equatable, CaseIterable {
    case info
    case warning
    case error
  }

  /** The kind of error happening. */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case gopSizeOver
    case gopSizeLong
    case gopSizeShort
    case openGop
    case badContainer
    case audioBitrateHigh
    case audioBitrateLow
    case audioSampleRate
    case bitrateHigh
    case bitrateLow
    case audioCodec
    case videoCodec
    case noAudioStream
    case noVideoStream
    case multipleVideoStreams
    case multipleAudioStreams
    case audioTooManyChannels
    case interlacedVideo
    case frameRateHigh
    case resolutionMismatch
    case videoCodecMismatch
    case videoInterlaceMismatch
    case videoProfileMismatch
    case videoBitrateMismatch
    case framerateMismatch
    case gopMismatch
    case audioSampleRateMismatch
    case audioStereoMismatch
    case audioCodecMismatch
    case audioBitrateMismatch
    case videoResolutionSuboptimal
    case videoResolutionUnsupported
    case videoIngestionStarved
    case videoIngestionFasterThanRealtime
  }

  /** The long-form description of the issue and how to resolve it. */
  public var description: String?

  /** The short-form reason for this issue. */
  public var reason: String?

  /** How severe this issue is to the stream. */
  public var severity: Severity?

  /** The kind of error happening. */
  public var type: `Type`?

  public init(description: String? = nil, reason: String? = nil, severity: Severity? = nil, type: Type? = nil) {
    self.description = description
    self.reason = reason
    self.severity = severity
    self.type = type
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    description = try container.decodeIfPresent("description")
    reason = try container.decodeIfPresent("reason")
    severity = try container.decodeIfPresent("severity")
    type = try container.decodeIfPresent("type")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(description, forKey: "description")
    try container.encodeIfPresent(reason, forKey: "reason")
    try container.encodeIfPresent(severity, forKey: "severity")
    try container.encodeIfPresent(type, forKey: "type")
  }
}
