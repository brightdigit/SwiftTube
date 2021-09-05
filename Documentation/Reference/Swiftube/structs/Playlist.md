**STRUCT**

# `Playlist`

```swift
public struct Playlist: Model
```

A *playlist* resource represents a YouTube playlist. A playlist is a collection of videos that can be viewed sequentially and shared with other users. A playlist can contain up to 200 videos, and YouTube does not limit the number of playlists that each user creates. By default, playlists are publicly visible to other users, but playlists can be public or private. YouTube also uses playlists to identify special collections of videos for a channel, such as: - uploaded videos - favorite videos - positively rated (liked) videos - watch history - watch later To be more specific, these lists are associated with a channel, which is a collection of a person, group, or company's videos, playlists, and other YouTube information. You can retrieve the playlist IDs for each of these lists from the channel resource for a given channel. You can then use the playlistItems.list method to retrieve any of those lists. You can also add or remove items from those lists by calling the playlistItems.insert and playlistItems.delete methods.

## Properties
### `contentDetails`

```swift
public var contentDetails: PlaylistContentDetails?
```

The contentDetails object contains information like video count.

### `etag`

```swift
public var etag: String?
```

Etag of this resource.

### `id`

```swift
public var id: String?
```

The ID that YouTube uses to uniquely identify the playlist.

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string "youtube#playlist".

### `localizations`

```swift
public var localizations: [String: PlaylistLocalization]?
```

Localizations for different languages

### `player`

```swift
public var player: PlaylistPlayer?
```

The player object contains information that you would use to play the playlist in an embedded player.

### `snippet`

```swift
public var snippet: PlaylistSnippet?
```

The snippet object contains basic details about the playlist, such as its title and description.

### `status`

```swift
public var status: PlaylistStatus?
```

The status object contains status information for the playlist.

## Methods
### `init(contentDetails:etag:id:kind:localizations:player:snippet:status:)`

```swift
public init(contentDetails: PlaylistContentDetails? = nil, etag: String? = nil, id: String? = nil, kind: String? = nil, localizations: [String: PlaylistLocalization]? = nil, player: PlaylistPlayer? = nil, snippet: PlaylistSnippet? = nil, status: PlaylistStatus? = nil)
```

### `init(from:)`

```swift
public init(from decoder: Decoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| decoder | The decoder to read data from. |

### `encode(to:)`

```swift
public func encode(to encoder: Encoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| encoder | The encoder to write data to. |