**STRUCT**

# `CdnSettings`

```swift
public struct CdnSettings: Model
```

Brief description of the live stream cdn settings.

## Properties
### `format`

```swift
public var format: String?
```

The format of the video stream that you are sending to Youtube.

### `frameRate`

```swift
public var frameRate: FrameRate?
```

The frame rate of the inbound video data.

### `ingestionInfo`

```swift
public var ingestionInfo: IngestionInfo?
```

The ingestionInfo object contains information that YouTube provides that you need to transmit your RTMP or HTTP stream to YouTube.

### `ingestionType`

```swift
public var ingestionType: IngestionType?
```

The method or protocol used to transmit the video stream.

### `resolution`

```swift
public var resolution: Resolution?
```

The resolution of the inbound video data.

## Methods
### `init(format:frameRate:ingestionInfo:ingestionType:resolution:)`

```swift
public init(format: String? = nil, frameRate: FrameRate? = nil, ingestionInfo: IngestionInfo? = nil, ingestionType: IngestionType? = nil, resolution: Resolution? = nil)
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