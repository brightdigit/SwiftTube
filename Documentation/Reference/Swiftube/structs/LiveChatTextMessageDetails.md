**STRUCT**

# `LiveChatTextMessageDetails`

```swift
public struct LiveChatTextMessageDetails: Model
```

## Properties
### `messageText`

```swift
public var messageText: String?
```

The user's message.

## Methods
### `init(messageText:)`

```swift
public init(messageText: String? = nil)
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