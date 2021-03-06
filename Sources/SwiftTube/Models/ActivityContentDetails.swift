import Foundation
import Prch

/** Details about the content of an activity: the video that was shared, the channel that was subscribed to, etc. */
public struct ActivityContentDetails: Model {
  /** The bulletin object contains details about a channel bulletin post. This object is only present if the snippet.type is bulletin. */
  public var bulletin: ActivityContentDetailsBulletin?

  /** The channelItem object contains details about a resource which was added to a channel. This property is only present if the snippet.type is channelItem. */
  public var channelItem: ActivityContentDetailsChannelItem?

  /** The comment object contains information about a resource that received a comment. This property is only present if the snippet.type is comment. */
  public var comment: ActivityContentDetailsComment?

  /** The favorite object contains information about a video that was marked as a favorite video. This property is only present if the snippet.type is favorite. */
  public var favorite: ActivityContentDetailsFavorite?

  /** The like object contains information about a resource that received a positive (like) rating. This property is only present if the snippet.type is like. */
  public var like: ActivityContentDetailsLike?

  /** The playlistItem object contains information about a new playlist item. This property is only present if the snippet.type is playlistItem. */
  public var playlistItem: ActivityContentDetailsPlaylistItem?

  /** The promotedItem object contains details about a resource which is being promoted. This property is only present if the snippet.type is promotedItem. */
  public var promotedItem: ActivityContentDetailsPromotedItem?

  /** The recommendation object contains information about a recommended resource. This property is only present if the snippet.type is recommendation. */
  public var recommendation: ActivityContentDetailsRecommendation?

  /** The social object contains details about a social network post. This property is only present if the snippet.type is social. */
  public var social: ActivityContentDetailsSocial?

  /** The subscription object contains information about a channel that a user subscribed to. This property is only present if the snippet.type is subscription. */
  public var subscription: ActivityContentDetailsSubscription?

  /** The upload object contains information about the uploaded video. This property is only present if the snippet.type is upload. */
  public var upload: ActivityContentDetailsUpload?

  public init(bulletin: ActivityContentDetailsBulletin? = nil, channelItem: ActivityContentDetailsChannelItem? = nil, comment: ActivityContentDetailsComment? = nil, favorite: ActivityContentDetailsFavorite? = nil, like: ActivityContentDetailsLike? = nil, playlistItem: ActivityContentDetailsPlaylistItem? = nil, promotedItem: ActivityContentDetailsPromotedItem? = nil, recommendation: ActivityContentDetailsRecommendation? = nil, social: ActivityContentDetailsSocial? = nil, subscription: ActivityContentDetailsSubscription? = nil, upload: ActivityContentDetailsUpload? = nil) {
    self.bulletin = bulletin
    self.channelItem = channelItem
    self.comment = comment
    self.favorite = favorite
    self.like = like
    self.playlistItem = playlistItem
    self.promotedItem = promotedItem
    self.recommendation = recommendation
    self.social = social
    self.subscription = subscription
    self.upload = upload
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    bulletin = try container.decodeIfPresent("bulletin")
    channelItem = try container.decodeIfPresent("channelItem")
    comment = try container.decodeIfPresent("comment")
    favorite = try container.decodeIfPresent("favorite")
    like = try container.decodeIfPresent("like")
    playlistItem = try container.decodeIfPresent("playlistItem")
    promotedItem = try container.decodeIfPresent("promotedItem")
    recommendation = try container.decodeIfPresent("recommendation")
    social = try container.decodeIfPresent("social")
    subscription = try container.decodeIfPresent("subscription")
    upload = try container.decodeIfPresent("upload")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(bulletin, forKey: "bulletin")
    try container.encodeIfPresent(channelItem, forKey: "channelItem")
    try container.encodeIfPresent(comment, forKey: "comment")
    try container.encodeIfPresent(favorite, forKey: "favorite")
    try container.encodeIfPresent(like, forKey: "like")
    try container.encodeIfPresent(playlistItem, forKey: "playlistItem")
    try container.encodeIfPresent(promotedItem, forKey: "promotedItem")
    try container.encodeIfPresent(recommendation, forKey: "recommendation")
    try container.encodeIfPresent(social, forKey: "social")
    try container.encodeIfPresent(subscription, forKey: "subscription")
    try container.encodeIfPresent(upload, forKey: "upload")
  }
}
