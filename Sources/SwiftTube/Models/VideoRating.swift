import Foundation
import Prch

/** Basic details about rating of a video. */
public struct VideoRating: Model {
  /** Rating of a video. */
  public enum Rating: String, Codable, Equatable, CaseIterable {
    case none
    case like
    case dislike
  }

  /** Rating of a video. */
  public var rating: Rating?

  /** The ID that YouTube uses to uniquely identify the video. */
  public var videoId: String?

  public init(rating: Rating? = nil, videoId: String? = nil) {
    self.rating = rating
    self.videoId = videoId
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    rating = try container.decodeIfPresent("rating")
    videoId = try container.decodeIfPresent("videoId")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(rating, forKey: "rating")
    try container.encodeIfPresent(videoId, forKey: "videoId")
  }
}
