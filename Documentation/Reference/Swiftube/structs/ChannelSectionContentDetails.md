**STRUCT**

# `ChannelSectionContentDetails`

```swift
public struct ChannelSectionContentDetails: Model
```

Details about a channelsection, including playlists and channels.

## Properties
### `channels`

```swift
public var channels: [String]?
```

The channel ids for type multiple_channels.

### `playlists`

```swift
public var playlists: [String]?
```

The playlist ids for type single_playlist and multiple_playlists. For singlePlaylist, only one playlistId is allowed.

## Methods
### `init(channels:playlists:)`

```swift
public init(channels: [String]? = nil, playlists: [String]? = nil)
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