**STRUCT**

# `LiveChatModeratorSnippet`

```swift
public struct LiveChatModeratorSnippet: Model
```

## Properties
### `liveChatId`

```swift
public var liveChatId: String?
```

The ID of the live chat this moderator can act on.

### `moderatorDetails`

```swift
public var moderatorDetails: ChannelProfileDetails?
```

Details about the moderator.

## Methods
### `init(liveChatId:moderatorDetails:)`

```swift
public init(liveChatId: String? = nil, moderatorDetails: ChannelProfileDetails? = nil)
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