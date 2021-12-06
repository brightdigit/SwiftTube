**STRUCT**

# `WatchSettings`

```swift
public struct WatchSettings: Model
```

Branding properties for the watch. All deprecated.

## Properties
### `backgroundColor`

```swift
public var backgroundColor: String?
```

The text color for the video watch page's branded area.

### `featuredPlaylistId`

```swift
public var featuredPlaylistId: String?
```

An ID that uniquely identifies a playlist that displays next to the video player.

### `textColor`

```swift
public var textColor: String?
```

The background color for the video watch page's branded area.

## Methods
### `init(backgroundColor:featuredPlaylistId:textColor:)`

```swift
public init(backgroundColor: String? = nil, featuredPlaylistId: String? = nil, textColor: String? = nil)
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