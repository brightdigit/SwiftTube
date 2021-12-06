import Foundation
import Prch

/** A `__liveChatBan__` resource represents a ban for a YouTube live chat. */
public struct LiveChatBan: Model {
  /** Etag of this resource. */
  public var etag: String?

  /** The ID that YouTube assigns to uniquely identify the ban. */
  public var id: String?

  /** Identifies what kind of resource this is. Value: the fixed string `"youtube#liveChatBan"`. */
  public var kind: String?

  /** The `snippet` object contains basic details about the ban. */
  public var snippet: LiveChatBanSnippet?

  public init(etag: String? = nil, id: String? = nil, kind: String? = nil, snippet: LiveChatBanSnippet? = nil) {
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
