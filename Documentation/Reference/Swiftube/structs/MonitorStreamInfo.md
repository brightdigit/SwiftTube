**STRUCT**

# `MonitorStreamInfo`

```swift
public struct MonitorStreamInfo: Model
```

Settings and Info of the monitor stream

## Properties
### `broadcastStreamDelayMs`

```swift
public var broadcastStreamDelayMs: Int?
```

If you have set the enableMonitorStream property to true, then this property determines the length of the live broadcast delay.

### `embedHtml`

```swift
public var embedHtml: String?
```

HTML code that embeds a player that plays the monitor stream.

### `enableMonitorStream`

```swift
public var enableMonitorStream: Bool?
```

This value determines whether the monitor stream is enabled for the broadcast. If the monitor stream is enabled, then YouTube will broadcast the event content on a special stream intended only for the broadcaster's consumption. The broadcaster can use the stream to review the event content and also to identify the optimal times to insert cuepoints. You need to set this value to true if you intend to have a broadcast delay for your event. *Note:* This property cannot be updated once the broadcast is in the testing or live state.

## Methods
### `init(broadcastStreamDelayMs:embedHtml:enableMonitorStream:)`

```swift
public init(broadcastStreamDelayMs: Int? = nil, embedHtml: String? = nil, enableMonitorStream: Bool? = nil)
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