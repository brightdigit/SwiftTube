import Foundation
import Prch

/** A `__videoAbuseReportReason__` resource identifies a reason that a video could be reported as abusive. Video abuse report reasons are used with `video.ReportAbuse`. */
public struct VideoAbuseReportReason: Model {
  /** Etag of this resource. */
  public var etag: String?

  /** The ID of this abuse report reason. */
  public var id: String?

  /** Identifies what kind of resource this is. Value: the fixed string `"youtube#videoAbuseReportReason"`. */
  public var kind: String?

  /** The `snippet` object contains basic details about the abuse report reason. */
  public var snippet: VideoAbuseReportReasonSnippet?

  public init(etag: String? = nil, id: String? = nil, kind: String? = nil, snippet: VideoAbuseReportReasonSnippet? = nil) {
    self.etag = etag
    self.id = id
    self.kind = kind
    self.snippet = snippet
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    etag = try container.decodeIfPresent("etag")
    id = try container.decodeIfPresent("id")
    kind = try container.decodeIfPresent("kind")
    snippet = try container.decodeIfPresent("snippet")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(etag, forKey: "etag")
    try container.encodeIfPresent(id, forKey: "id")
    try container.encodeIfPresent(kind, forKey: "kind")
    try container.encodeIfPresent(snippet, forKey: "snippet")
  }
}
