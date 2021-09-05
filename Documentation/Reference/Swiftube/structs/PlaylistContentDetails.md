**STRUCT**

# `PlaylistContentDetails`

```swift
public struct PlaylistContentDetails: Model
```

## Properties
### `itemCount`

```swift
public var itemCount: Int?
```

The number of videos in the playlist.

## Methods
### `init(itemCount:)`

```swift
public init(itemCount: Int? = nil)
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