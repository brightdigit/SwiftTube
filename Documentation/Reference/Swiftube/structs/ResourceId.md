**STRUCT**

# `ResourceId`

```swift
public struct ResourceId: Model
```

A resource id is a generic reference that points to another YouTube resource.

## Properties
### `channelId`

```swift
public var channelId: String?
```

The ID that YouTube uses to uniquely identify the referred resource, if that resource is a channel. This property is only present if the resourceId.kind value is youtube#channel.

### `kind`

```swift
public var kind: String?
```

The type of the API resource.

### `playlistId`

```swift
public var playlistId: String?
```

The ID that YouTube uses to uniquely identify the referred resource, if that resource is a playlist. This property is only present if the resourceId.kind value is youtube#playlist.

### `videoId`

```swift
public var videoId: String?
```

The ID that YouTube uses to uniquely identify the referred resource, if that resource is a video. This property is only present if the resourceId.kind value is youtube#video.

## Methods
### `init(channelId:kind:playlistId:videoId:)`

```swift
public init(channelId: String? = nil, kind: String? = nil, playlistId: String? = nil, videoId: String? = nil)
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