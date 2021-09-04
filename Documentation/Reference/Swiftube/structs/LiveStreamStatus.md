**STRUCT**

# `LiveStreamStatus`

```swift
public struct LiveStreamStatus: Model
```

Brief description of the live stream status.

## Properties
### `healthStatus`

```swift
public var healthStatus: LiveStreamHealthStatus?
```

The health status of the stream.

### `streamStatus`

```swift
public var streamStatus: StreamStatus?
```

## Methods
### `init(healthStatus:streamStatus:)`

```swift
public init(healthStatus: LiveStreamHealthStatus? = nil, streamStatus: StreamStatus? = nil)
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