import Foundation
import Prch

/** Brief description of the live stream cdn settings. */
public struct CdnSettings: Model {
  /** The frame rate of the inbound video data. */
  public enum FrameRate: String, Codable, Equatable, CaseIterable {
    case _30fps = "30fps"
    case _60fps = "60fps"
    case variable
  }

  /**  The method or protocol used to transmit the video stream. */
  public enum IngestionType: String, Codable, Equatable, CaseIterable {
    case rtmp
    case dash
    case webrtc
    case hls
  }

  /** The resolution of the inbound video data. */
  public enum Resolution: String, Codable, Equatable, CaseIterable {
    case _240p = "240p"
    case _360p = "360p"
    case _480p = "480p"
    case _720p = "720p"
    case _1080p = "1080p"
    case _1440p = "1440p"
    case _2160p = "2160p"
    case variable
  }

  /** The format of the video stream that you are sending to Youtube.  */
  public var format: String?

  /** The frame rate of the inbound video data. */
  public var frameRate: FrameRate?

  /** The ingestionInfo object contains information that YouTube provides that you need to transmit your RTMP or HTTP stream to YouTube. */
  public var ingestionInfo: IngestionInfo?

  /**  The method or protocol used to transmit the video stream. */
  public var ingestionType: IngestionType?

  /** The resolution of the inbound video data. */
  public var resolution: Resolution?

  public init(format: String? = nil, frameRate: FrameRate? = nil, ingestionInfo: IngestionInfo? = nil, ingestionType: IngestionType? = nil, resolution: Resolution? = nil) {
    self.format = format
    self.frameRate = frameRate
    self.ingestionInfo = ingestionInfo
    self.ingestionType = ingestionType
    self.resolution = resolution
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    format = try container.decodeIfPresent("format")
    frameRate = try container.decodeIfPresent("frameRate")
    ingestionInfo = try container.decodeIfPresent("ingestionInfo")
    ingestionType = try container.decodeIfPresent("ingestionType")
    resolution = try container.decodeIfPresent("resolution")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(format, forKey: "format")
    try container.encodeIfPresent(frameRate, forKey: "frameRate")
    try container.encodeIfPresent(ingestionInfo, forKey: "ingestionInfo")
    try container.encodeIfPresent(ingestionType, forKey: "ingestionType")
    try container.encodeIfPresent(resolution, forKey: "resolution")
  }
}
