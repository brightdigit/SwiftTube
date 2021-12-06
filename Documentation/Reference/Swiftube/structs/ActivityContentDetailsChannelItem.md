**STRUCT**

# `ActivityContentDetailsChannelItem`

```swift
public struct ActivityContentDetailsChannelItem: Model
```

Details about a resource which was added to a channel.

## Properties
### `resourceId`

```swift
public var resourceId: ResourceId?
```

The resourceId object contains information that identifies the resource that was added to the channel.

## Methods
### `init(resourceId:)`

```swift
public init(resourceId: ResourceId? = nil)
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