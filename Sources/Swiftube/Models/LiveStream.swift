import Foundation
import Prch

/** A live stream describes a live ingestion point. */
public struct LiveStream: Model {
  /** The cdn object defines the live stream's content delivery network (CDN) settings. These settings provide details about the manner in which you stream your content to YouTube. */
  public var cdn: CdnSettings?

  /** The content_details object contains information about the stream, including the closed captions ingestion URL. */
  public var contentDetails: LiveStreamContentDetails?

  /** Etag of this resource. */
  public var etag: String?

  /** The ID that YouTube assigns to uniquely identify the stream. */
  public var id: String?

  /** Identifies what kind of resource this is. Value: the fixed string "youtube#liveStream". */
  public var kind: String?

  /** The snippet object contains basic details about the stream, including its channel, title, and description. */
  public var snippet: LiveStreamSnippet?

  /** The status object contains information about live stream's status. */
  public var status: LiveStreamStatus?

  public init(cdn: CdnSettings? = nil, contentDetails: LiveStreamContentDetails? = nil, etag: String? = nil, id: String? = nil, kind: String? = nil, snippet: LiveStreamSnippet? = nil, status: LiveStreamStatus? = nil) {
    self.cdn = cdn
    self.contentDetails = contentDetails
    self.etag = etag
    self.id = id
    self.kind = kind
    self.snippet = snippet
    self.status = status
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    cdn = try container.decodeIfPresent("cdn")
    contentDetails = try container.decodeIfPresent("contentDetails")
    etag = try container.decodeIfPresent("etag")
    id = try container.decodeIfPresent("id")
    kind = try container.decodeIfPresent("kind")
    snippet = try container.decodeIfPresent("snippet")
    status = try container.decodeIfPresent("status")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(cdn, forKey: "cdn")
    try container.encodeIfPresent(contentDetails, forKey: "contentDetails")
    try container.encodeIfPresent(etag, forKey: "etag")
    try container.encodeIfPresent(id, forKey: "id")
    try container.encodeIfPresent(kind, forKey: "kind")
    try container.encodeIfPresent(snippet, forKey: "snippet")
    try container.encodeIfPresent(status, forKey: "status")
  }
}
