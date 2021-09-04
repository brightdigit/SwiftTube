**STRUCT**

# `LiveStreamHealthStatus`

```swift
public struct LiveStreamHealthStatus: Model
```

## Properties
### `configurationIssues`

```swift
public var configurationIssues: [LiveStreamConfigurationIssue]?
```

The configurations issues on this stream

### `lastUpdateTimeSeconds`

```swift
public var lastUpdateTimeSeconds: String?
```

The last time this status was updated (in seconds)

### `status`

```swift
public var status: Status?
```

The status code of this stream

## Methods
### `init(configurationIssues:lastUpdateTimeSeconds:status:)`

```swift
public init(configurationIssues: [LiveStreamConfigurationIssue]? = nil, lastUpdateTimeSeconds: String? = nil, status: Status? = nil)
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