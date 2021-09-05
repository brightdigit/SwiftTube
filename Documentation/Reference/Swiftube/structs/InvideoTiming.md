**STRUCT**

# `InvideoTiming`

```swift
public struct InvideoTiming: Model
```

Describes a temporal position of a visual widget inside a video.

## Properties
### `durationMs`

```swift
public var durationMs: String?
```

Defines the duration in milliseconds for which the promotion should be displayed. If missing, the client should use the default.

### `offsetMs`

```swift
public var offsetMs: String?
```

Defines the time at which the promotion will appear. Depending on the value of type the value of the offsetMs field will represent a time offset from the start or from the end of the video, expressed in milliseconds.

### `type`

```swift
public var type: `Type`?
```

Describes a timing type. If the value is offsetFromStart, then the offsetMs field represents an offset from the start of the video. If the value is offsetFromEnd, then the offsetMs field represents an offset from the end of the video.

## Methods
### `init(durationMs:offsetMs:type:)`

```swift
public init(durationMs: String? = nil, offsetMs: String? = nil, type: Type? = nil)
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