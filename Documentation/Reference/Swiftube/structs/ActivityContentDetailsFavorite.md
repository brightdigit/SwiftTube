**STRUCT**

# `ActivityContentDetailsFavorite`

```swift
public struct ActivityContentDetailsFavorite: Model
```

Information about a video that was marked as a favorite video.

## Properties
### `resourceId`

```swift
public var resourceId: ResourceId?
```

The resourceId object contains information that identifies the resource that was marked as a favorite.

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