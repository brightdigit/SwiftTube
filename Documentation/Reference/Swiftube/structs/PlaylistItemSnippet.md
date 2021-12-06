**STRUCT**

# `PlaylistItemSnippet`

```swift
public struct PlaylistItemSnippet: Model
```

Basic details about a playlist, including title, description and thumbnails. Basic details of a YouTube Playlist item provided by the author. Next ID: 15

## Properties
### `channelId`

```swift
public var channelId: String?
```

The ID that YouTube uses to uniquely identify the user that added the item to the playlist.

### `channelTitle`

```swift
public var channelTitle: String?
```

Channel title for the channel that the playlist item belongs to.

### `description`

```swift
public var description: String?
```

The item's description.

### `playlistId`

```swift
public var playlistId: String?
```

The ID that YouTube uses to uniquely identify thGe playlist that the playlist item is in.

### `position`

```swift
public var position: Int?
```

The order in which the item appears in the playlist. The value uses a zero-based index, so the first item has a position of 0, the second item has a position of 1, and so forth.

### `publishedAt`

```swift
public var publishedAt: DateTime?
```

The date and time that the item was added to the playlist.

### `resourceId`

```swift
public var resourceId: ResourceId?
```

The id object contains information that can be used to uniquely identify the resource that is included in the playlist as the playlist item.

### `thumbnails`

```swift
public var thumbnails: ThumbnailDetails?
```

A map of thumbnail images associated with the playlist item. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail.

### `title`

```swift
public var title: String?
```

The item's title.

### `videoOwnerChannelId`

```swift
public var videoOwnerChannelId: String?
```

Channel id for the channel this video belongs to.

### `videoOwnerChannelTitle`

```swift
public var videoOwnerChannelTitle: String?
```

Channel title for the channel this video belongs to.

## Methods
### `init(channelId:channelTitle:description:playlistId:position:publishedAt:resourceId:thumbnails:title:videoOwnerChannelId:videoOwnerChannelTitle:)`

```swift
public init(channelId: String? = nil, channelTitle: String? = nil, description: String? = nil, playlistId: String? = nil, position: Int? = nil, publishedAt: DateTime? = nil, resourceId: ResourceId? = nil, thumbnails: ThumbnailDetails? = nil, title: String? = nil, videoOwnerChannelId: String? = nil, videoOwnerChannelTitle: String? = nil)
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