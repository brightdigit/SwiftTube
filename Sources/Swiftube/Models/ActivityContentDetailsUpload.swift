import Foundation
import Prch

/** Information about the uploaded video. */
public struct ActivityContentDetailsUpload: Model {
  /** The ID that YouTube uses to uniquely identify the uploaded video. */
  public var videoId: String?

  public init(videoId: String? = nil) {
    self.videoId = videoId
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    videoId = try container.decodeIfPresent("videoId")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(videoId, forKey: "videoId")
  }
}
