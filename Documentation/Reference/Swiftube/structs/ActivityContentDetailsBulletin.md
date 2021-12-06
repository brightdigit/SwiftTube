**STRUCT**

# `ActivityContentDetailsBulletin`

```swift
public struct ActivityContentDetailsBulletin: Model
```

Details about a channel bulletin post.

## Properties
### `resourceId`

```swift
public var resourceId: ResourceId?
```

The resourceId object contains information that identifies the resource associated with a bulletin post. @mutable youtube.activities.insert

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