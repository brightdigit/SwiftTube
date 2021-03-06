import Foundation
import Prch

/** Basic details about a comment, such as its author and text. */
public struct CommentSnippet: Model {
  /** The comment's moderation status. Will not be set if the comments were requested through the id filter. */
  public enum ModerationStatus: String, Codable, Equatable, CaseIterable {
    case published
    case heldForReview
    case likelySpam
    case rejected
  }

  /** The rating the viewer has given to this comment. For the time being this will never return RATE_TYPE_DISLIKE and instead return RATE_TYPE_NONE. This may change in the future. */
  public enum ViewerRating: String, Codable, Equatable, CaseIterable {
    case none
    case like
    case dislike
  }

  public var authorChannelId: CommentSnippetAuthorChannelId?

  /** Link to the author's YouTube channel, if any. */
  public var authorChannelUrl: String?

  /** The name of the user who posted the comment. */
  public var authorDisplayName: String?

  /** The URL for the avatar of the user who posted the comment. */
  public var authorProfileImageUrl: String?

  /** Whether the current viewer can rate this comment. */
  public var canRate: Bool?

  /** The id of the corresponding YouTube channel. In case of a channel comment this is the channel the comment refers to. In case of a video comment it's the video's channel. */
  public var channelId: String?

  /** The total number of likes this comment has received. */
  public var likeCount: Int?

  /** The comment's moderation status. Will not be set if the comments were requested through the id filter. */
  public var moderationStatus: ModerationStatus?

  /** The unique id of the parent comment, only set for replies. */
  public var parentId: String?

  /** The date and time when the comment was originally published. */
  public var publishedAt: Date?

  /** The comment's text. The format is either plain text or HTML dependent on what has been requested. Even the plain text representation may differ from the text originally posted in that it may replace video links with video titles etc. */
  public var textDisplay: String?

  /** The comment's original raw text as initially posted or last updated. The original text will only be returned if it is accessible to the viewer, which is only guaranteed if the viewer is the comment's author. */
  public var textOriginal: String?

  /** The date and time when the comment was last updated. */
  public var updatedAt: Date?

  /** The ID of the video the comment refers to, if any. */
  public var videoId: String?

  /** The rating the viewer has given to this comment. For the time being this will never return RATE_TYPE_DISLIKE and instead return RATE_TYPE_NONE. This may change in the future. */
  public var viewerRating: ViewerRating?

  public init(authorChannelId: CommentSnippetAuthorChannelId? = nil, authorChannelUrl: String? = nil, authorDisplayName: String? = nil, authorProfileImageUrl: String? = nil, canRate: Bool? = nil, channelId: String? = nil, likeCount: Int? = nil, moderationStatus: ModerationStatus? = nil, parentId: String? = nil, publishedAt: Date? = nil, textDisplay: String? = nil, textOriginal: String? = nil, updatedAt: Date? = nil, videoId: String? = nil, viewerRating: ViewerRating? = nil) {
    self.authorChannelId = authorChannelId
    self.authorChannelUrl = authorChannelUrl
    self.authorDisplayName = authorDisplayName
    self.authorProfileImageUrl = authorProfileImageUrl
    self.canRate = canRate
    self.channelId = channelId
    self.likeCount = likeCount
    self.moderationStatus = moderationStatus
    self.parentId = parentId
    self.publishedAt = publishedAt
    self.textDisplay = textDisplay
    self.textOriginal = textOriginal
    self.updatedAt = updatedAt
    self.videoId = videoId
    self.viewerRating = viewerRating
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    authorChannelId = try container.decodeIfPresent("authorChannelId")
    authorChannelUrl = try container.decodeIfPresent("authorChannelUrl")
    authorDisplayName = try container.decodeIfPresent("authorDisplayName")
    authorProfileImageUrl = try container.decodeIfPresent("authorProfileImageUrl")
    canRate = try container.decodeIfPresent("canRate")
    channelId = try container.decodeIfPresent("channelId")
    likeCount = try container.decodeIfPresent("likeCount")
    moderationStatus = try container.decodeIfPresent("moderationStatus")
    parentId = try container.decodeIfPresent("parentId")
    publishedAt = try container.decodeIfPresent("publishedAt")
    textDisplay = try container.decodeIfPresent("textDisplay")
    textOriginal = try container.decodeIfPresent("textOriginal")
    updatedAt = try container.decodeIfPresent("updatedAt")
    videoId = try container.decodeIfPresent("videoId")
    viewerRating = try container.decodeIfPresent("viewerRating")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(authorChannelId, forKey: "authorChannelId")
    try container.encodeIfPresent(authorChannelUrl, forKey: "authorChannelUrl")
    try container.encodeIfPresent(authorDisplayName, forKey: "authorDisplayName")
    try container.encodeIfPresent(authorProfileImageUrl, forKey: "authorProfileImageUrl")
    try container.encodeIfPresent(canRate, forKey: "canRate")
    try container.encodeIfPresent(channelId, forKey: "channelId")
    try container.encodeIfPresent(likeCount, forKey: "likeCount")
    try container.encodeIfPresent(moderationStatus, forKey: "moderationStatus")
    try container.encodeIfPresent(parentId, forKey: "parentId")
    try container.encodeIfPresent(publishedAt, forKey: "publishedAt")
    try container.encodeIfPresent(textDisplay, forKey: "textDisplay")
    try container.encodeIfPresent(textOriginal, forKey: "textOriginal")
    try container.encodeIfPresent(updatedAt, forKey: "updatedAt")
    try container.encodeIfPresent(videoId, forKey: "videoId")
    try container.encodeIfPresent(viewerRating, forKey: "viewerRating")
  }
}
