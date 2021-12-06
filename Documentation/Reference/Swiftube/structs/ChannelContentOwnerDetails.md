**STRUCT**

# `ChannelContentOwnerDetails`

```swift
public struct ChannelContentOwnerDetails: Model
```

The contentOwnerDetails object encapsulates channel data that is relevant for YouTube Partners linked with the channel.

## Properties
### `contentOwner`

```swift
public var contentOwner: String?
```

The ID of the content owner linked to the channel.

### `timeLinked`

```swift
public var timeLinked: DateTime?
```

The date and time when the channel was linked to the content owner.

## Methods
### `init(contentOwner:timeLinked:)`

```swift
public init(contentOwner: String? = nil, timeLinked: DateTime? = nil)
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