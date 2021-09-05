**STRUCT**

# `LiveChatMemberMilestoneChatDetails`

```swift
public struct LiveChatMemberMilestoneChatDetails: Model
```

## Properties
### `memberLevelName`

```swift
public var memberLevelName: String?
```

The name of the Level at which the viever is a member. The Level names are defined by the YouTube channel offering the Membership. In some situations this field isn't filled.

### `memberMonth`

```swift
public var memberMonth: Int?
```

The total amount of months (rounded up) the viewer has been a member that granted them this Member Milestone Chat. This is the same number of months as is being displayed to YouTube users.

### `userComment`

```swift
public var userComment: String?
```

The comment added by the member to this Member Milestone Chat. This field is empty for messages without a comment from the member.

## Methods
### `init(memberLevelName:memberMonth:userComment:)`

```swift
public init(memberLevelName: String? = nil, memberMonth: Int? = nil, userComment: String? = nil)
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