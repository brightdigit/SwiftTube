import Foundation
import Prch

/** Details about the content of a channel. */
public struct ChannelContentDetails: Model {
  public var relatedPlaylists: RelatedPlaylists?

  /** Details about the content of a channel. */
  public struct RelatedPlaylists: Model {
    /** The ID of the playlist that contains the channel"s favorite videos. Use the playlistItems.insert and playlistItems.delete to add or remove items from that list. */
    public var favorites: String?

    /** The ID of the playlist that contains the channel"s liked videos. Use the playlistItems.insert and playlistItems.delete to add or remove items from that list. */
    public var likes: String?

    /** The ID of the playlist that contains the channel"s uploaded videos. Use the videos.insert method to upload new videos and the videos.delete method to delete previously uploaded videos. */
    public var uploads: String?

    /** The ID of the playlist that contains the channel"s watch history. Use the playlistItems.insert and playlistItems.delete to add or remove items from that list. */
    public var watchHistory: String?

    /** The ID of the playlist that contains the channel"s watch later playlist. Use the playlistItems.insert and playlistItems.delete to add or remove items from that list. */
    public var watchLater: String?

    public init(favorites: String? = nil, likes: String? = nil, uploads: String? = nil, watchHistory: String? = nil, watchLater: String? = nil) {
      self.favorites = favorites
      self.likes = likes
      self.uploads = uploads
      self.watchHistory = watchHistory
      self.watchLater = watchLater
    }

    public init(from decoder: Decoder) throws {
      let container = try decoder.container(keyedBy: StringCodingKey.self)

      favorites = try container.decodeIfPresent("favorites")
      likes = try container.decodeIfPresent("likes")
      uploads = try container.decodeIfPresent("uploads")
      watchHistory = try container.decodeIfPresent("watchHistory")
      watchLater = try container.decodeIfPresent("watchLater")
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: StringCodingKey.self)

      try container.encodeIfPresent(favorites, forKey: "favorites")
      try container.encodeIfPresent(likes, forKey: "likes")
      try container.encodeIfPresent(uploads, forKey: "uploads")
      try container.encodeIfPresent(watchHistory, forKey: "watchHistory")
      try container.encodeIfPresent(watchLater, forKey: "watchLater")
    }
  }

  public init(relatedPlaylists: RelatedPlaylists? = nil) {
    self.relatedPlaylists = relatedPlaylists
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    relatedPlaylists = try container.decodeIfPresent("relatedPlaylists")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(relatedPlaylists, forKey: "relatedPlaylists")
  }
}
