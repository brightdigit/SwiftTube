**STRUCT**

# `ActivityContentDetailsRecommendation`

```swift
public struct ActivityContentDetailsRecommendation: Model
```

Information that identifies the recommended resource.

## Properties
### `reason`

```swift
public var reason: Reason?
```

The reason that the resource is recommended to the user.

### `resourceId`

```swift
public var resourceId: ResourceId?
```

The resourceId object contains information that identifies the recommended resource.

### `seedResourceId`

```swift
public var seedResourceId: ResourceId?
```

The seedResourceId object contains information about the resource that caused the recommendation.

## Methods
### `init(reason:resourceId:seedResourceId:)`

```swift
public init(reason: Reason? = nil, resourceId: ResourceId? = nil, seedResourceId: ResourceId? = nil)
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