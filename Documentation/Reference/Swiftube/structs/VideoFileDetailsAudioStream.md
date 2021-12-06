**STRUCT**

# `VideoFileDetailsAudioStream`

```swift
public struct VideoFileDetailsAudioStream: Model
```

Information about an audio stream.

## Properties
### `bitrateBps`

```swift
public var bitrateBps: String?
```

The audio stream's bitrate, in bits per second.

### `channelCount`

```swift
public var channelCount: Int?
```

The number of audio channels that the stream contains.

### `codec`

```swift
public var codec: String?
```

The audio codec that the stream uses.

### `vendor`

```swift
public var vendor: String?
```

A value that uniquely identifies a video vendor. Typically, the value is a four-letter vendor code.

## Methods
### `init(bitrateBps:channelCount:codec:vendor:)`

```swift
public init(bitrateBps: String? = nil, channelCount: Int? = nil, codec: String? = nil, vendor: String? = nil)
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