import Foundation
import Prch

public struct VideoAgeGating: Model {
  /** Video game rating, if any. */
  public enum VideoGameRating: String, Codable, Equatable, CaseIterable {
    case anyone
    case m15Plus
    case m16Plus
    case m17Plus
  }

  /** Indicates whether or not the video has alcoholic beverage content. Only users of legal purchasing age in a particular country, as identified by ICAP, can view the content. */
  public var alcoholContent: Bool?

  /** Age-restricted trailers. For redband trailers and adult-rated video-games. Only users aged 18+ can view the content. The the field is true the content is restricted to viewers aged 18+. Otherwise The field won't be present. */
  public var restricted: Bool?

  /** Video game rating, if any. */
  public var videoGameRating: VideoGameRating?

  public init(alcoholContent: Bool? = nil, restricted: Bool? = nil, videoGameRating: VideoGameRating? = nil) {
    self.alcoholContent = alcoholContent
    self.restricted = restricted
    self.videoGameRating = videoGameRating
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    alcoholContent = try container.decodeIfPresent("alcoholContent")
    restricted = try container.decodeIfPresent("restricted")
    videoGameRating = try container.decodeIfPresent("videoGameRating")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(alcoholContent, forKey: "alcoholContent")
    try container.encodeIfPresent(restricted, forKey: "restricted")
    try container.encodeIfPresent(videoGameRating, forKey: "videoGameRating")
  }
}
