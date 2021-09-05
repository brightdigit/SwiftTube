**STRUCT**

# `PlaylistItem`

```swift
public struct PlaylistItem: Model
```

A *playlistItem* resource identifies another resource, such as a video, that is included in a playlist. In addition, the playlistItem resource contains details about the included resource that pertain specifically to how that resource is used in that playlist. YouTube uses playlists to identify special collections of videos for a channel, such as: - uploaded videos - favorite videos - positively rated (liked) videos - watch history - watch later To be more specific, these lists are associated with a channel, which is a collection of a person, group, or company's videos, playlists, and other YouTube information. You can retrieve the playlist IDs for each of these lists from the channel resource for a given channel. You can then use the playlistItems.list method to retrieve any of those lists. You can also add or remove items from those lists by calling the playlistItems.insert and playlistItems.delete methods. For example, if a user gives a positive rating to a video, you would insert that video into the liked videos playlist for that user's channel.

## Properties
### `contentDetails`

```swift
public var contentDetails: PlaylistItemContentDetails?
```

The contentDetails object is included in the resource if the included item is a YouTube video. The object contains additional information about the video.

### `etag`

```swift
public var etag: String?
```

Etag of this resource.

### `id`

```swift
public var id: String?
```

The ID that YouTube uses to uniquely identify the playlist item.

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string "youtube#playlistItem".

### `snippet`

```swift
public var snippet: PlaylistItemSnippet?
```

The snippet object contains basic details about the playlist item, such as its title and position in the playlist.

### `status`

```swift
public var status: PlaylistItemStatus?
```

The status object contains information about the playlist item's privacy status.

## Methods
### `init(contentDetails:etag:id:kind:snippet:status:)`

```swift
public init(contentDetails: PlaylistItemContentDetails? = nil, etag: String? = nil, id: String? = nil, kind: String? = nil, snippet: PlaylistItemSnippet? = nil, status: PlaylistItemStatus? = nil)
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