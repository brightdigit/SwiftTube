import Foundation
import Prch

/** A *playlist* resource represents a YouTube playlist. A playlist is a collection of videos that can be viewed sequentially and shared with other users. A playlist can contain up to 200 videos, and YouTube does not limit the number of playlists that each user creates. By default, playlists are publicly visible to other users, but playlists can be public or private. YouTube also uses playlists to identify special collections of videos for a channel, such as: - uploaded videos - favorite videos - positively rated (liked) videos - watch history - watch later To be more specific, these lists are associated with a channel, which is a collection of a person, group, or company's videos, playlists, and other YouTube information. You can retrieve the playlist IDs for each of these lists from the channel resource for a given channel. You can then use the playlistItems.list method to retrieve any of those lists. You can also add or remove items from those lists by calling the playlistItems.insert and playlistItems.delete methods. */
public struct Playlist: Model {
  /** The contentDetails object contains information like video count. */
  public var contentDetails: PlaylistContentDetails?

  /** Etag of this resource. */
  public var etag: String?

  /** The ID that YouTube uses to uniquely identify the playlist. */
  public var id: String?

  /** Identifies what kind of resource this is. Value: the fixed string "youtube#playlist". */
  public var kind: String?

  /** Localizations for different languages */
  public var localizations: [String: PlaylistLocalization]?

  /** The player object contains information that you would use to play the playlist in an embedded player. */
  public var player: PlaylistPlayer?

  /** The snippet object contains basic details about the playlist, such as its title and description. */
  public var snippet: PlaylistSnippet?

  /** The status object contains status information for the playlist. */
  public var status: PlaylistStatus?

  public init(contentDetails: PlaylistContentDetails? = nil, etag: String? = nil, id: String? = nil, kind: String? = nil, localizations: [String: PlaylistLocalization]? = nil, player: PlaylistPlayer? = nil, snippet: PlaylistSnippet? = nil, status: PlaylistStatus? = nil) {
    self.contentDetails = contentDetails
    self.etag = etag
    self.id = id
    self.kind = kind
    self.localizations = localizations
    self.player = player
    self.snippet = snippet
    self.status = status
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    contentDetails = try container.decodeIfPresent("contentDetails")
    etag = try container.decodeIfPresent("etag")
    id = try container.decodeIfPresent("id")
    kind = try container.decodeIfPresent("kind")
    localizations = try container.decodeIfPresent("localizations")
    player = try container.decodeIfPresent("player")
    snippet = try container.decodeIfPresent("snippet")
    status = try container.decodeIfPresent("status")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(contentDetails, forKey: "contentDetails")
    try container.encodeIfPresent(etag, forKey: "etag")
    try container.encodeIfPresent(id, forKey: "id")
    try container.encodeIfPresent(kind, forKey: "kind")
    try container.encodeIfPresent(localizations, forKey: "localizations")
    try container.encodeIfPresent(player, forKey: "player")
    try container.encodeIfPresent(snippet, forKey: "snippet")
    try container.encodeIfPresent(status, forKey: "status")
  }
}
