import Foundation
import Prch

/** Comments written in (direct or indirect) reply to the top level comment. */
public struct CommentThreadReplies: Model {
  /** A limited number of replies. Unless the number of replies returned equals total_reply_count in the snippet the returned replies are only a subset of the total number of replies. */
  public var comments: [Comment]?

  public init(comments: [Comment]? = nil) {
    self.comments = comments
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    comments = try container.decodeArrayIfPresent("comments")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(comments, forKey: "comments")
  }
}
