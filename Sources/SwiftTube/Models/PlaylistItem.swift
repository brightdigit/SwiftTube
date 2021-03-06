import Foundation
import Prch

/** A *playlistItem* resource identifies another resource, such as a video, that is included in a playlist. In addition, the playlistItem resource contains details about the included resource that pertain specifically to how that resource is used in that playlist. YouTube uses playlists to identify special collections of videos for a channel, such as: - uploaded videos - favorite videos - positively rated (liked) videos - watch history - watch later To be more specific, these lists are associated with a channel, which is a collection of a person, group, or company's videos, playlists, and other YouTube information. You can retrieve the playlist IDs for each of these lists from the channel resource for a given channel. You can then use the playlistItems.list method to retrieve any of those lists. You can also add or remove items from those lists by calling the playlistItems.insert and playlistItems.delete methods. For example, if a user gives a positive rating to a video, you would insert that video into the liked videos playlist for that user's channel. */
public struct PlaylistItem: Model {
  /** The contentDetails object is included in the resource if the included item is a YouTube video. The object contains additional information about the video. */
  public var contentDetails: PlaylistItemContentDetails?

  /** Etag of this resource. */
  public var etag: String?

  /** The ID that YouTube uses to uniquely identify the playlist item. */
  public var id: String?

  /** Identifies what kind of resource this is. Value: the fixed string "youtube#playlistItem". */
  public var kind: String?

  /** The snippet object contains basic details about the playlist item, such as its title and position in the playlist. */
  public var snippet: PlaylistItemSnippet?

  /** The status object contains information about the playlist item's privacy status. */
  public var status: PlaylistItemStatus?

  public init(contentDetails: PlaylistItemContentDetails? = nil, etag: String? = nil, id: String? = nil, kind: String? = nil, snippet: PlaylistItemSnippet? = nil, status: PlaylistItemStatus? = nil) {
    self.contentDetails = contentDetails
    self.etag = etag
    self.id = id
    self.kind = kind
    self.snippet = snippet
    self.status = status
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    contentDetails = try container.decodeIfPresent("contentDetails")
    etag = try container.decodeIfPresent("etag")
    id = try container.decodeIfPresent("id")
    kind = try container.decodeIfPresent("kind")
    snippet = try container.decodeIfPresent("snippet")
    status = try container.decodeIfPresent("status")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(contentDetails, forKey: "contentDetails")
    try container.encodeIfPresent(etag, forKey: "etag")
    try container.encodeIfPresent(id, forKey: "id")
    try container.encodeIfPresent(kind, forKey: "kind")
    try container.encodeIfPresent(snippet, forKey: "snippet")
    try container.encodeIfPresent(status, forKey: "status")
  }
}
