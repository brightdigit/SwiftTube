import Foundation
import Prch

public struct CommentListResponse: Model {
  /** Etag of this resource. */
  public var etag: String?

  /** Serialized EventId of the request which produced this response. */
  public var eventId: String?

  /** A list of comments that match the request criteria. */
  public var items: [Comment]?

  /** Identifies what kind of resource this is. Value: the fixed string "youtube#commentListResponse". */
  public var kind: String?

  /** The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set. */
  public var nextPageToken: String?

  /** General pagination information. */
  public var pageInfo: PageInfo?

  public var tokenPagination: TokenPagination?

  /** The visitorId identifies the visitor. */
  public var visitorId: String?

  public init(etag: String? = nil, eventId: String? = nil, items: [Comment]? = nil, kind: String? = nil, nextPageToken: String? = nil, pageInfo: PageInfo? = nil, tokenPagination: TokenPagination? = nil, visitorId: String? = nil) {
    self.etag = etag
    self.eventId = eventId
    self.items = items
    self.kind = kind
    self.nextPageToken = nextPageToken
    self.pageInfo = pageInfo
    self.tokenPagination = tokenPagination
    self.visitorId = visitorId
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    etag = try container.decodeIfPresent("etag")
    eventId = try container.decodeIfPresent("eventId")
    items = try container.decodeArrayIfPresent("items")
    kind = try container.decodeIfPresent("kind")
    nextPageToken = try container.decodeIfPresent("nextPageToken")
    pageInfo = try container.decodeIfPresent("pageInfo")
    tokenPagination = try container.decodeIfPresent("tokenPagination")
    visitorId = try container.decodeIfPresent("visitorId")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(etag, forKey: "etag")
    try container.encodeIfPresent(eventId, forKey: "eventId")
    try container.encodeIfPresent(items, forKey: "items")
    try container.encodeIfPresent(kind, forKey: "kind")
    try container.encodeIfPresent(nextPageToken, forKey: "nextPageToken")
    try container.encodeIfPresent(pageInfo, forKey: "pageInfo")
    try container.encodeIfPresent(tokenPagination, forKey: "tokenPagination")
    try container.encodeIfPresent(visitorId, forKey: "visitorId")
  }
}
