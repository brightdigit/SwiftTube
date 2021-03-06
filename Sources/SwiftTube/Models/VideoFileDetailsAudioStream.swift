import Foundation
import Prch

/** Information about an audio stream. */
public struct VideoFileDetailsAudioStream: Model {
  /** The audio stream's bitrate, in bits per second. */
  public var bitrateBps: String?

  /** The number of audio channels that the stream contains. */
  public var channelCount: Int?

  /** The audio codec that the stream uses. */
  public var codec: String?

  /** A value that uniquely identifies a video vendor. Typically, the value is a four-letter vendor code. */
  public var vendor: String?

  public init(bitrateBps: String? = nil, channelCount: Int? = nil, codec: String? = nil, vendor: String? = nil) {
    self.bitrateBps = bitrateBps
    self.channelCount = channelCount
    self.codec = codec
    self.vendor = vendor
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    bitrateBps = try container.decodeIfPresent("bitrateBps")
    channelCount = try container.decodeIfPresent("channelCount")
    codec = try container.decodeIfPresent("codec")
    vendor = try container.decodeIfPresent("vendor")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(bitrateBps, forKey: "bitrateBps")
    try container.encodeIfPresent(channelCount, forKey: "channelCount")
    try container.encodeIfPresent(codec, forKey: "codec")
    try container.encodeIfPresent(vendor, forKey: "vendor")
  }
}
