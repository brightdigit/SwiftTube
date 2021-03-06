import Foundation
import Prch

/** A *comment* represents a single YouTube comment. */
public struct Comment: Model {
  /** Etag of this resource. */
  public var etag: String?

  /** The ID that YouTube uses to uniquely identify the comment. */
  public var id: String?

  /** Identifies what kind of resource this is. Value: the fixed string "youtube#comment". */
  public var kind: String?

  /** The snippet object contains basic details about the comment. */
  public var snippet: CommentSnippet?

  public init(etag: String? = nil, id: String? = nil, kind: String? = nil, snippet: CommentSnippet? = nil) {
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
