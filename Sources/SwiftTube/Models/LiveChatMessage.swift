import Foundation
import Prch

/** A *liveChatMessage* resource represents a chat message in a YouTube Live Chat. */
public struct LiveChatMessage: Model {
  /** The authorDetails object contains basic details about the user that posted this message. */
  public var authorDetails: LiveChatMessageAuthorDetails?

  /** Etag of this resource. */
  public var etag: String?

  /** The ID that YouTube assigns to uniquely identify the message. */
  public var id: String?

  /** Identifies what kind of resource this is. Value: the fixed string "youtube#liveChatMessage". */
  public var kind: String?

  /** The snippet object contains basic details about the message. */
  public var snippet: LiveChatMessageSnippet?

  public init(authorDetails: LiveChatMessageAuthorDetails? = nil, etag: String? = nil, id: String? = nil, kind: String? = nil, snippet: LiveChatMessageSnippet? = nil) {
    self.authorDetails = authorDetails
    self.etag = etag
    self.id = id
    self.kind = kind
    self.snippet = snippet
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    authorDetails = try container.decodeIfPresent("authorDetails")
    etag = try container.decodeIfPresent("etag")
    id = try container.decodeIfPresent("id")
    kind = try container.decodeIfPresent("kind")
    snippet = try container.decodeIfPresent("snippet")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(authorDetails, forKey: "authorDetails")
    try container.encodeIfPresent(etag, forKey: "etag")
    try container.encodeIfPresent(id, forKey: "id")
    try container.encodeIfPresent(kind, forKey: "kind")
    try container.encodeIfPresent(snippet, forKey: "snippet")
  }
}
