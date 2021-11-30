import Foundation
import Prch

/** Basic details about a comment thread. */
public struct CommentThreadSnippet: Model {
  /** Whether the current viewer of the thread can reply to it. This is viewer specific - other viewers may see a different value for this field. */
  public var canReply: Bool?

  /** The YouTube channel the comments in the thread refer to or the channel with the video the comments refer to. If video_id isn't set the comments refer to the channel itself. */
  public var channelId: String?

  /** Whether the thread (and therefore all its comments) is visible to all YouTube users. */
  public var isPublic: Bool?

  /** The top level comment of this thread. */
  public var topLevelComment: Comment?

  /** The total number of replies (not including the top level comment). */
  public var totalReplyCount: Int?

  /** The ID of the video the comments refer to, if any. No video_id implies a channel discussion comment. */
  public var videoId: String?

  public init(canReply: Bool? = nil, channelId: String? = nil, isPublic: Bool? = nil, topLevelComment: Comment? = nil, totalReplyCount: Int? = nil, videoId: String? = nil) {
    self.canReply = canReply
    self.channelId = channelId
    self.isPublic = isPublic
    self.topLevelComment = topLevelComment
    self.totalReplyCount = totalReplyCount
    self.videoId = videoId
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    canReply = try container.decodeIfPresent("canReply")
    channelId = try container.decodeIfPresent("channelId")
    isPublic = try container.decodeIfPresent("isPublic")
    topLevelComment = try container.decodeIfPresent("topLevelComment")
    totalReplyCount = try container.decodeIfPresent("totalReplyCount")
    videoId = try container.decodeIfPresent("videoId")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(canReply, forKey: "canReply")
    try container.encodeIfPresent(channelId, forKey: "channelId")
    try container.encodeIfPresent(isPublic, forKey: "isPublic")
    try container.encodeIfPresent(topLevelComment, forKey: "topLevelComment")
    try container.encodeIfPresent(totalReplyCount, forKey: "totalReplyCount")
    try container.encodeIfPresent(videoId, forKey: "videoId")
  }
}
