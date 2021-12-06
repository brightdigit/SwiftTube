**STRUCT**

# `ChannelContentDetails`

```swift
public struct ChannelContentDetails: Model
```

Details about the content of a channel.

## Properties
### `relatedPlaylists`

```swift
public var relatedPlaylists: RelatedPlaylists?
```

## Methods
### `init(relatedPlaylists:)`

```swift
public init(relatedPlaylists: RelatedPlaylists? = nil)
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