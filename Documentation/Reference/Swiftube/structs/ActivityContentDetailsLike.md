**STRUCT**

# `ActivityContentDetailsLike`

```swift
public struct ActivityContentDetailsLike: Model
```

Information about a resource that received a positive (like) rating.

## Properties
### `resourceId`

```swift
public var resourceId: ResourceId?
```

The resourceId object contains information that identifies the rated resource.

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