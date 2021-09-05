**STRUCT**

# `ChannelContentDetails.RelatedPlaylists`

```swift
public struct RelatedPlaylists: Model
```

Details about the content of a channel.

## Properties
### `favorites`

```swift
public var favorites: String?
```

The ID of the playlist that contains the channel"s favorite videos. Use the playlistItems.insert and playlistItems.delete to add or remove items from that list.

### `likes`

```swift
public var likes: String?
```

The ID of the playlist that contains the channel"s liked videos. Use the playlistItems.insert and playlistItems.delete to add or remove items from that list.

### `uploads`

```swift
public var uploads: String?
```

The ID of the playlist that contains the channel"s uploaded videos. Use the videos.insert method to upload new videos and the videos.delete method to delete previously uploaded videos.

### `watchHistory`

```swift
public var watchHistory: String?
```

The ID of the playlist that contains the channel"s watch history. Use the playlistItems.insert and playlistItems.delete to add or remove items from that list.

### `watchLater`

```swift
public var watchLater: String?
```

The ID of the playlist that contains the channel"s watch later playlist. Use the playlistItems.insert and playlistItems.delete to add or remove items from that list.

## Methods
### `init(favorites:likes:uploads:watchHistory:watchLater:)`

```swift
public init(favorites: String? = nil, likes: String? = nil, uploads: String? = nil, watchHistory: String? = nil, watchLater: String? = nil)
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