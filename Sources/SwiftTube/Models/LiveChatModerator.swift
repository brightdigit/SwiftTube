import Foundation
import Prch

/** A *liveChatModerator* resource represents a moderator for a YouTube live chat. A chat moderator has the ability to ban/unban users from a chat, remove message, etc. */
public struct LiveChatModerator: Model {
  /** Etag of this resource. */
  public var etag: String?

  /** The ID that YouTube assigns to uniquely identify the moderator. */
  public var id: String?

  /** Identifies what kind of resource this is. Value: the fixed string "youtube#liveChatModerator". */
  public var kind: String?

  /** The snippet object contains basic details about the moderator. */
  public var snippet: LiveChatModeratorSnippet?

  public init(etag: String? = nil, id: String? = nil, kind: String? = nil, snippet: LiveChatModeratorSnippet? = nil) {
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
