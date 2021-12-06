**STRUCT**

# `LiveChatMessageSnippet`

```swift
public struct LiveChatMessageSnippet: Model
```

Next ID: 31

## Properties
### `authorChannelId`

```swift
public var authorChannelId: String?
```

The ID of the user that authored this message, this field is not always filled. textMessageEvent - the user that wrote the message fanFundingEvent - the user that funded the broadcast newSponsorEvent - the user that just became a sponsor memberMilestoneChatEvent - the member that sent the message messageDeletedEvent - the moderator that took the action messageRetractedEvent - the author that retracted their message userBannedEvent - the moderator that took the action superChatEvent - the user that made the purchase superStickerEvent - the user that made the purchase

### `displayMessage`

```swift
public var displayMessage: String?
```

Contains a string that can be displayed to the user. If this field is not present the message is silent, at the moment only messages of type TOMBSTONE and CHAT_ENDED_EVENT are silent.

### `fanFundingEventDetails`

```swift
public var fanFundingEventDetails: LiveChatFanFundingEventDetails?
```

Details about the funding event, this is only set if the type is 'fanFundingEvent'.

### `hasDisplayContent`

```swift
public var hasDisplayContent: Bool?
```

Whether the message has display content that should be displayed to users.

### `liveChatId`

```swift
public var liveChatId: String?
```

### `memberMilestoneChatDetails`

```swift
public var memberMilestoneChatDetails: LiveChatMemberMilestoneChatDetails?
```

Details about the Member Milestone Chat event, this is only set if the type is 'memberMilestoneChatEvent'.

### `messageDeletedDetails`

```swift
public var messageDeletedDetails: LiveChatMessageDeletedDetails?
```

### `messageRetractedDetails`

```swift
public var messageRetractedDetails: LiveChatMessageRetractedDetails?
```

### `newSponsorDetails`

```swift
public var newSponsorDetails: LiveChatNewSponsorDetails?
```

Details about the New Member Announcement event, this is only set if the type is 'newSponsorEvent'. Please note that "member" is the new term for "sponsor".

### `publishedAt`

```swift
public var publishedAt: DateTime?
```

The date and time when the message was orignally published.

### `superChatDetails`

```swift
public var superChatDetails: LiveChatSuperChatDetails?
```

Details about the Super Chat event, this is only set if the type is 'superChatEvent'.

### `superStickerDetails`

```swift
public var superStickerDetails: LiveChatSuperStickerDetails?
```

Details about the Super Sticker event, this is only set if the type is 'superStickerEvent'.

### `textMessageDetails`

```swift
public var textMessageDetails: LiveChatTextMessageDetails?
```

Details about the text message, this is only set if the type is 'textMessageEvent'.

### `type`

```swift
public var type: `Type`?
```

The type of message, this will always be present, it determines the contents of the message as well as which fields will be present.

### `userBannedDetails`

```swift
public var userBannedDetails: LiveChatUserBannedMessageDetails?
```

## Methods
### `init(authorChannelId:displayMessage:fanFundingEventDetails:hasDisplayContent:liveChatId:memberMilestoneChatDetails:messageDeletedDetails:messageRetractedDetails:newSponsorDetails:publishedAt:superChatDetails:superStickerDetails:textMessageDetails:type:userBannedDetails:)`

```swift
public init(authorChannelId: String? = nil, displayMessage: String? = nil, fanFundingEventDetails: LiveChatFanFundingEventDetails? = nil, hasDisplayContent: Bool? = nil, liveChatId: String? = nil, memberMilestoneChatDetails: LiveChatMemberMilestoneChatDetails? = nil, messageDeletedDetails: LiveChatMessageDeletedDetails? = nil, messageRetractedDetails: LiveChatMessageRetractedDetails? = nil, newSponsorDetails: LiveChatNewSponsorDetails? = nil, publishedAt: DateTime? = nil, superChatDetails: LiveChatSuperChatDetails? = nil, superStickerDetails: LiveChatSuperStickerDetails? = nil, textMessageDetails: LiveChatTextMessageDetails? = nil, type: Type? = nil, userBannedDetails: LiveChatUserBannedMessageDetails? = nil)
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