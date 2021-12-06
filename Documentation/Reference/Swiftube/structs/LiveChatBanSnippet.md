**STRUCT**

# `LiveChatBanSnippet`

```swift
public struct LiveChatBanSnippet: Model
```

## Properties
### `banDurationSeconds`

```swift
public var banDurationSeconds: String?
```

The duration of a ban, only filled if the ban has type TEMPORARY.

### `bannedUserDetails`

```swift
public var bannedUserDetails: ChannelProfileDetails?
```

### `liveChatId`

```swift
public var liveChatId: String?
```

The chat this ban is pertinent to.

### `type`

```swift
public var type: `Type`?
```

The type of ban.

## Methods
### `init(banDurationSeconds:bannedUserDetails:liveChatId:type:)`

```swift
public init(banDurationSeconds: String? = nil, bannedUserDetails: ChannelProfileDetails? = nil, liveChatId: String? = nil, type: Type? = nil)
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