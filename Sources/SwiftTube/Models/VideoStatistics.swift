import Foundation
import Prch

/** Statistics about the video, such as the number of times the video was viewed or liked. */
public struct VideoStatistics: Model {
  /** The number of comments for the video. */
  public var commentCount: String?

  /** The number of users who have indicated that they disliked the video by giving it a negative rating. */
  public var dislikeCount: String?

  /** The number of users who currently have the video marked as a favorite video. */
  public var favoriteCount: String?

  /** The number of users who have indicated that they liked the video by giving it a positive rating. */
  public var likeCount: String?

  /** The number of times the video has been viewed. */
  public var viewCount: String?

  public init(commentCount: String? = nil, dislikeCount: String? = nil, favoriteCount: String? = nil, likeCount: String? = nil, viewCount: String? = nil) {
    self.commentCount = commentCount
    self.dislikeCount = dislikeCount
    self.favoriteCount = favoriteCount
    self.likeCount = likeCount
    self.viewCount = viewCount
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    commentCount = try container.decodeIfPresent("commentCount")
    dislikeCount = try container.decodeIfPresent("dislikeCount")
    favoriteCount = try container.decodeIfPresent("favoriteCount")
    likeCount = try container.decodeIfPresent("likeCount")
    viewCount = try container.decodeIfPresent("viewCount")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(commentCount, forKey: "commentCount")
    try container.encodeIfPresent(dislikeCount, forKey: "dislikeCount")
    try container.encodeIfPresent(favoriteCount, forKey: "favoriteCount")
    try container.encodeIfPresent(likeCount, forKey: "likeCount")
    try container.encodeIfPresent(viewCount, forKey: "viewCount")
  }
}
