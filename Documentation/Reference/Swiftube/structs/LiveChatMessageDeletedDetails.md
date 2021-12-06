**STRUCT**

# `LiveChatMessageDeletedDetails`

```swift
public struct LiveChatMessageDeletedDetails: Model
```

## Properties
### `deletedMessageId`

```swift
public var deletedMessageId: String?
```

## Methods
### `init(deletedMessageId:)`

```swift
public init(deletedMessageId: String? = nil)
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