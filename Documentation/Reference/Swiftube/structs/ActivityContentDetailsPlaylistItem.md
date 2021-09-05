**STRUCT**

# `ActivityContentDetailsPlaylistItem`

```swift
public struct ActivityContentDetailsPlaylistItem: Model
```

Information about a new playlist item.

## Properties
### `playlistId`

```swift
public var playlistId: String?
```

The value that YouTube uses to uniquely identify the playlist.

### `playlistItemId`

```swift
public var playlistItemId: String?
```

ID of the item within the playlist.

### `resourceId`

```swift
public var resourceId: ResourceId?
```

The resourceId object contains information about the resource that was added to the playlist.

## Methods
### `init(playlistId:playlistItemId:resourceId:)`

```swift
public init(playlistId: String? = nil, playlistItemId: String? = nil, resourceId: ResourceId? = nil)
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