import Foundation
import Prch

/** Information about a video stream. */
public struct VideoFileDetailsVideoStream: Model {
  /** The amount that YouTube needs to rotate the original source content to properly display the video. */
  public enum Rotation: String, Codable, Equatable, CaseIterable {
    case none
    case clockwise
    case upsideDown
    case counterClockwise
    case other
  }

  /** The video content's display aspect ratio, which specifies the aspect ratio in which the video should be displayed. */
  public var aspectRatio: Double?

  /** The video stream's bitrate, in bits per second. */
  public var bitrateBps: String?

  /** The video codec that the stream uses. */
  public var codec: String?

  /** The video stream's frame rate, in frames per second. */
  public var frameRateFps: Double?

  /** The encoded video content's height in pixels. */
  public var heightPixels: Int?

  /** The amount that YouTube needs to rotate the original source content to properly display the video. */
  public var rotation: Rotation?

  /** A value that uniquely identifies a video vendor. Typically, the value is a four-letter vendor code. */
  public var vendor: String?

  /** The encoded video content's width in pixels. You can calculate the video's encoding aspect ratio as width_pixels / height_pixels. */
  public var widthPixels: Int?

  public init(aspectRatio: Double? = nil, bitrateBps: String? = nil, codec: String? = nil, frameRateFps: Double? = nil, heightPixels: Int? = nil, rotation: Rotation? = nil, vendor: String? = nil, widthPixels: Int? = nil) {
    self.aspectRatio = aspectRatio
    self.bitrateBps = bitrateBps
    self.codec = codec
    self.frameRateFps = frameRateFps
    self.heightPixels = heightPixels
    self.rotation = rotation
    self.vendor = vendor
    self.widthPixels = widthPixels
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    aspectRatio = try container.decodeIfPresent("aspectRatio")
    bitrateBps = try container.decodeIfPresent("bitrateBps")
    codec = try container.decodeIfPresent("codec")
    frameRateFps = try container.decodeIfPresent("frameRateFps")
    heightPixels = try container.decodeIfPresent("heightPixels")
    rotation = try container.decodeIfPresent("rotation")
    vendor = try container.decodeIfPresent("vendor")
    widthPixels = try container.decodeIfPresent("widthPixels")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(aspectRatio, forKey: "aspectRatio")
    try container.encodeIfPresent(bitrateBps, forKey: "bitrateBps")
    try container.encodeIfPresent(codec, forKey: "codec")
    try container.encodeIfPresent(frameRateFps, forKey: "frameRateFps")
    try container.encodeIfPresent(heightPixels, forKey: "heightPixels")
    try container.encodeIfPresent(rotation, forKey: "rotation")
    try container.encodeIfPresent(vendor, forKey: "vendor")
    try container.encodeIfPresent(widthPixels, forKey: "widthPixels")
  }
}
