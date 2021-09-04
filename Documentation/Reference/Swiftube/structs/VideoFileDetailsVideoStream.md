**STRUCT**

# `VideoFileDetailsVideoStream`

```swift
public struct VideoFileDetailsVideoStream: Model
```

Information about a video stream.

## Properties
### `aspectRatio`

```swift
public var aspectRatio: Double?
```

The video content's display aspect ratio, which specifies the aspect ratio in which the video should be displayed.

### `bitrateBps`

```swift
public var bitrateBps: String?
```

The video stream's bitrate, in bits per second.

### `codec`

```swift
public var codec: String?
```

The video codec that the stream uses.

### `frameRateFps`

```swift
public var frameRateFps: Double?
```

The video stream's frame rate, in frames per second.

### `heightPixels`

```swift
public var heightPixels: Int?
```

The encoded video content's height in pixels.

### `rotation`

```swift
public var rotation: Rotation?
```

The amount that YouTube needs to rotate the original source content to properly display the video.

### `vendor`

```swift
public var vendor: String?
```

A value that uniquely identifies a video vendor. Typically, the value is a four-letter vendor code.

### `widthPixels`

```swift
public var widthPixels: Int?
```

The encoded video content's width in pixels. You can calculate the video's encoding aspect ratio as width_pixels / height_pixels.

## Methods
### `init(aspectRatio:bitrateBps:codec:frameRateFps:heightPixels:rotation:vendor:widthPixels:)`

```swift
public init(aspectRatio: Double? = nil, bitrateBps: String? = nil, codec: String? = nil, frameRateFps: Double? = nil, heightPixels: Int? = nil, rotation: Rotation? = nil, vendor: String? = nil, widthPixels: Int? = nil)
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