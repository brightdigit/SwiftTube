import Foundation
import Prch

/** A *member* resource represents a member for a YouTube channel. A member provides recurring monetary support to a creator and receives special benefits. */
public struct Member: Model {
  /** Etag of this resource. */
  public var etag: String?

  /** Identifies what kind of resource this is. Value: the fixed string "youtube#member". */
  public var kind: String?

  /** The snippet object contains basic details about the member. */
  public var snippet: MemberSnippet?

  public init(etag: String? = nil, kind: String? = nil, snippet: MemberSnippet? = nil) {
    self.etag = etag
    self.kind = kind
    self.snippet = snippet
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    etag = try container.decodeIfPresent("etag")
    kind = try container.decodeIfPresent("kind")
    snippet = try container.decodeIfPresent("snippet")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(etag, forKey: "etag")
    try container.encodeIfPresent(kind, forKey: "kind")
    try container.encodeIfPresent(snippet, forKey: "snippet")
  }
}
