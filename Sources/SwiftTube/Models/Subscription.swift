import Foundation
import Prch

/** A *subscription* resource contains information about a YouTube user subscription. A subscription notifies a user when new videos are added to a channel or when another user takes one of several actions on YouTube, such as uploading a video, rating a video, or commenting on a video. */
public struct Subscription: Model {
  /** The contentDetails object contains basic statistics about the subscription. */
  public var contentDetails: SubscriptionContentDetails?

  /** Etag of this resource. */
  public var etag: String?

  /** The ID that YouTube uses to uniquely identify the subscription. */
  public var id: String?

  /** Identifies what kind of resource this is. Value: the fixed string "youtube#subscription". */
  public var kind: String?

  /** The snippet object contains basic details about the subscription, including its title and the channel that the user subscribed to. */
  public var snippet: SubscriptionSnippet?

  /** The subscriberSnippet object contains basic details about the subscriber. */
  public var subscriberSnippet: SubscriptionSubscriberSnippet?

  public init(contentDetails: SubscriptionContentDetails? = nil, etag: String? = nil, id: String? = nil, kind: String? = nil, snippet: SubscriptionSnippet? = nil, subscriberSnippet: SubscriptionSubscriberSnippet? = nil) {
    self.contentDetails = contentDetails
    self.etag = etag
    self.id = id
    self.kind = kind
    self.snippet = snippet
    self.subscriberSnippet = subscriberSnippet
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    contentDetails = try container.decodeIfPresent("contentDetails")
    etag = try container.decodeIfPresent("etag")
    id = try container.decodeIfPresent("id")
    kind = try container.decodeIfPresent("kind")
    snippet = try container.decodeIfPresent("snippet")
    subscriberSnippet = try container.decodeIfPresent("subscriberSnippet")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(contentDetails, forKey: "contentDetails")
    try container.encodeIfPresent(etag, forKey: "etag")
    try container.encodeIfPresent(id, forKey: "id")
    try container.encodeIfPresent(kind, forKey: "kind")
    try container.encodeIfPresent(snippet, forKey: "snippet")
    try container.encodeIfPresent(subscriberSnippet, forKey: "subscriberSnippet")
  }
}
