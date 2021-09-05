**STRUCT**

# `LiveStreamContentDetails`

```swift
public struct LiveStreamContentDetails: Model
```

Detailed settings of a stream.

## Properties
### `closedCaptionsIngestionUrl`

```swift
public var closedCaptionsIngestionUrl: String?
```

The ingestion URL where the closed captions of this stream are sent.

### `isReusable`

```swift
public var isReusable: Bool?
```

Indicates whether the stream is reusable, which means that it can be bound to multiple broadcasts. It is common for broadcasters to reuse the same stream for many different broadcasts if those broadcasts occur at different times. If you set this value to false, then the stream will not be reusable, which means that it can only be bound to one broadcast. Non-reusable streams differ from reusable streams in the following ways: - A non-reusable stream can only be bound to one broadcast. - A non-reusable stream might be deleted by an automated process after the broadcast ends. - The liveStreams.list method does not list non-reusable streams if you call the method and set the mine parameter to true. The only way to use that method to retrieve the resource for a non-reusable stream is to use the id parameter to identify the stream.

## Methods
### `init(closedCaptionsIngestionUrl:isReusable:)`

```swift
public init(closedCaptionsIngestionUrl: String? = nil, isReusable: Bool? = nil)
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