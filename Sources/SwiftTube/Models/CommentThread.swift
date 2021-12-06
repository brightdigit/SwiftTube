import Foundation
import Prch

/** A *comment thread* represents information that applies to a top level comment and all its replies. It can also include the top level comment itself and some of the replies. */
public struct CommentThread: Model {
  /** Etag of this resource. */
  public var etag: String?

  /** The ID that YouTube uses to uniquely identify the comment thread. */
  public var id: String?

  /** Identifies what kind of resource this is. Value: the fixed string "youtube#commentThread". */
  public var kind: String?

  /** The replies object contains a limited number of replies (if any) to the top level comment found in the snippet. */
  public var replies: CommentThreadReplies?

  /** The snippet object contains basic details about the comment thread and also the top level comment. */
  public var snippet: CommentThreadSnippet?

  public init(etag: String? = nil, id: String? = nil, kind: String? = nil, replies: CommentThreadReplies? = nil, snippet: CommentThreadSnippet? = nil) {
    self.etag = etag
    self.id = id
    self.kind = kind
    self.replies = replies
    self.snippet = snippet
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    etag = try container.decodeIfPresent("etag")
    id = try container.decodeIfPresent("id")
    kind = try container.decodeIfPresent("kind")
    replies = try container.decodeIfPresent("replies")
    snippet = try container.decodeIfPresent("snippet")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(etag, forKey: "etag")
    try container.encodeIfPresent(id, forKey: "id")
    try container.encodeIfPresent(kind, forKey: "kind")
    try container.encodeIfPresent(replies, forKey: "replies")
    try container.encodeIfPresent(snippet, forKey: "snippet")
  }
}
