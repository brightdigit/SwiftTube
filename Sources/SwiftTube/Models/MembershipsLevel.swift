import Foundation
import Prch

/** A *membershipsLevel* resource represents an offer made by YouTube creators for their fans. Users can become members of the channel by joining one of the available levels. They will provide recurring monetary support and receives special benefits. */
public struct MembershipsLevel: Model {
  /** Etag of this resource. */
  public var etag: String?

  /** The ID that YouTube assigns to uniquely identify the memberships level. */
  public var id: String?

  /** Identifies what kind of resource this is. Value: the fixed string "youtube#membershipsLevelListResponse". */
  public var kind: String?

  /** The snippet object contains basic details about the level. */
  public var snippet: MembershipsLevelSnippet?

  public init(etag: String? = nil, id: String? = nil, kind: String? = nil, snippet: MembershipsLevelSnippet? = nil) {
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
