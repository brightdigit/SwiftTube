**STRUCT**

# `LiveChatMessageAuthorDetails`

```swift
public struct LiveChatMessageAuthorDetails: Model
```

## Properties
### `channelId`

```swift
public var channelId: String?
```

The YouTube channel ID.

### `channelUrl`

```swift
public var channelUrl: String?
```

The channel's URL.

### `displayName`

```swift
public var displayName: String?
```

The channel's display name.

### `isChatModerator`

```swift
public var isChatModerator: Bool?
```

Whether the author is a moderator of the live chat.

### `isChatOwner`

```swift
public var isChatOwner: Bool?
```

Whether the author is the owner of the live chat.

### `isChatSponsor`

```swift
public var isChatSponsor: Bool?
```

Whether the author is a sponsor of the live chat.

### `isVerified`

```swift
public var isVerified: Bool?
```

Whether the author's identity has been verified by YouTube.

### `profileImageUrl`

```swift
public var profileImageUrl: String?
```

The channels's avatar URL.

## Methods
### `init(channelId:channelUrl:displayName:isChatModerator:isChatOwner:isChatSponsor:isVerified:profileImageUrl:)`

```swift
public init(channelId: String? = nil, channelUrl: String? = nil, displayName: String? = nil, isChatModerator: Bool? = nil, isChatOwner: Bool? = nil, isChatSponsor: Bool? = nil, isVerified: Bool? = nil, profileImageUrl: String? = nil)
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