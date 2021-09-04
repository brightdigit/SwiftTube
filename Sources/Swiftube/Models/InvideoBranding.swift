import Foundation
import Prch

/** LINT.IfChange Describes an invideo branding. */
public struct InvideoBranding: Model {
  /** The bytes the uploaded image. Only used in api to youtube communication. */
  public var imageBytes: File?

  /** The url of the uploaded image. Only used in apiary to api communication. */
  public var imageUrl: String?

  /** The spatial position within the video where the branding watermark will be displayed. */
  public var position: InvideoPosition?

  /** The channel to which this branding links. If not present it defaults to the current channel. */
  public var targetChannelId: String?

  /** The temporal position within the video where watermark will be displayed. */
  public var timing: InvideoTiming?

  public init(imageBytes: File? = nil, imageUrl: String? = nil, position: InvideoPosition? = nil, targetChannelId: String? = nil, timing: InvideoTiming? = nil) {
    self.imageBytes = imageBytes
    self.imageUrl = imageUrl
    self.position = position
    self.targetChannelId = targetChannelId
    self.timing = timing
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    imageBytes = try container.decodeIfPresent("imageBytes")
    imageUrl = try container.decodeIfPresent("imageUrl")
    position = try container.decodeIfPresent("position")
    targetChannelId = try container.decodeIfPresent("targetChannelId")
    timing = try container.decodeIfPresent("timing")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(imageBytes, forKey: "imageBytes")
    try container.encodeIfPresent(imageUrl, forKey: "imageUrl")
    try container.encodeIfPresent(position, forKey: "position")
    try container.encodeIfPresent(targetChannelId, forKey: "targetChannelId")
    try container.encodeIfPresent(timing, forKey: "timing")
  }
}
