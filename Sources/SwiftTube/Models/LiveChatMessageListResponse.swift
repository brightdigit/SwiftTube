import Foundation
import Prch

public struct LiveChatMessageListResponse: Model {
  /** Etag of this resource. */
  public var etag: String?

  /** Serialized EventId of the request which produced this response. */
  public var eventId: String?

  public var items: [LiveChatMessage]?

  /** Identifies what kind of resource this is. Value: the fixed string "youtube#liveChatMessageListResponse". */
  public var kind: String?

  public var nextPageToken: String?

  /** The date and time when the underlying stream went offline. */
  public var offlineAt: Date?

  /** General pagination information. */
  public var pageInfo: PageInfo?

  /** The amount of time the client should wait before polling again. */
  public var pollingIntervalMillis: Int?

  public var tokenPagination: TokenPagination?

  /** The visitorId identifies the visitor. */
  public var visitorId: String?

  public init(etag: String? = nil, eventId: String? = nil, items: [LiveChatMessage]? = nil, kind: String? = nil, nextPageToken: String? = nil, offlineAt: Date? = nil, pageInfo: PageInfo? = nil, pollingIntervalMillis: Int? = nil, tokenPagination: TokenPagination? = nil, visitorId: String? = nil) {
    self.etag = etag
    self.eventId = eventId
    self.items = items
    self.kind = kind
    self.nextPageToken = nextPageToken
    self.offlineAt = offlineAt
    self.pageInfo = pageInfo
    self.pollingIntervalMillis = pollingIntervalMillis
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
    offlineAt = try container.decodeIfPresent("offlineAt")
    pageInfo = try container.decodeIfPresent("pageInfo")
    pollingIntervalMillis = try container.decodeIfPresent("pollingIntervalMillis")
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
    try container.encodeIfPresent(offlineAt, forKey: "offlineAt")
    try container.encodeIfPresent(pageInfo, forKey: "pageInfo")
    try container.encodeIfPresent(pollingIntervalMillis, forKey: "pollingIntervalMillis")
    try container.encodeIfPresent(tokenPagination, forKey: "tokenPagination")
    try container.encodeIfPresent(visitorId, forKey: "visitorId")
  }
}
