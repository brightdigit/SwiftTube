**STRUCT**

# `PlaylistPlayer`

```swift
public struct PlaylistPlayer: Model
```

## Properties
### `embedHtml`

```swift
public var embedHtml: String?
```

An <iframe> tag that embeds a player that will play the playlist.

## Methods
### `init(embedHtml:)`

```swift
public init(embedHtml: String? = nil)
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