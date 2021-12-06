**STRUCT**

# `VideoPlayer`

```swift
public struct VideoPlayer: Model
```

Player to be used for a video playback.

## Properties
### `embedHeight`

```swift
public var embedHeight: String?
```

### `embedHtml`

```swift
public var embedHtml: String?
```

An <iframe> tag that embeds a player that will play the video.

### `embedWidth`

```swift
public var embedWidth: String?
```

The embed width

## Methods
### `init(embedHeight:embedHtml:embedWidth:)`

```swift
public init(embedHeight: String? = nil, embedHtml: String? = nil, embedWidth: String? = nil)
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