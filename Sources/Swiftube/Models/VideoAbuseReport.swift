import Foundation
import Prch

public struct VideoAbuseReport: Model {
  /** Additional comments regarding the abuse report. */
  public var comments: String?

  /** The language that the content was viewed in. */
  public var language: String?

  /** The high-level, or primary, reason that the content is abusive. The value is an abuse report reason ID. */
  public var reasonId: String?

  /** The specific, or secondary, reason that this content is abusive (if available). The value is an abuse report reason ID that is a valid secondary reason for the primary reason. */
  public var secondaryReasonId: String?

  /** The ID that YouTube uses to uniquely identify the video. */
  public var videoId: String?

  public init(comments: String? = nil, language: String? = nil, reasonId: String? = nil, secondaryReasonId: String? = nil, videoId: String? = nil) {
    self.comments = comments
    self.language = language
    self.reasonId = reasonId
    self.secondaryReasonId = secondaryReasonId
    self.videoId = videoId
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    comments = try container.decodeIfPresent("comments")
    language = try container.decodeIfPresent("language")
    reasonId = try container.decodeIfPresent("reasonId")
    secondaryReasonId = try container.decodeIfPresent("secondaryReasonId")
    videoId = try container.decodeIfPresent("videoId")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(comments, forKey: "comments")
    try container.encodeIfPresent(language, forKey: "language")
    try container.encodeIfPresent(reasonId, forKey: "reasonId")
    try container.encodeIfPresent(secondaryReasonId, forKey: "secondaryReasonId")
    try container.encodeIfPresent(videoId, forKey: "videoId")
  }
}
