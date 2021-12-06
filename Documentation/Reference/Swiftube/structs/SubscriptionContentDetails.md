**STRUCT**

# `SubscriptionContentDetails`

```swift
public struct SubscriptionContentDetails: Model
```

Details about the content to witch a subscription refers.

## Properties
### `activityType`

```swift
public var activityType: ActivityType?
```

The type of activity this subscription is for (only uploads, everything).

### `newItemCount`

```swift
public var newItemCount: Int?
```

The number of new items in the subscription since its content was last read.

### `totalItemCount`

```swift
public var totalItemCount: Int?
```

The approximate number of items that the subscription points to.

## Methods
### `init(activityType:newItemCount:totalItemCount:)`

```swift
public init(activityType: ActivityType? = nil, newItemCount: Int? = nil, totalItemCount: Int? = nil)
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