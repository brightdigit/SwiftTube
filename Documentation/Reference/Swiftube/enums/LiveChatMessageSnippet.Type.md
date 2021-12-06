**ENUM**

# `LiveChatMessageSnippet.Type`

```swift
public enum `Type`: String, Codable, Equatable, CaseIterable
```

The type of message, this will always be present, it determines the contents of the message as well as which fields will be present.

## Cases
### `invalidType`

```swift
case invalidType
```

### `textMessageEvent`

```swift
case textMessageEvent
```

### `tombstone`

```swift
case tombstone
```

### `fanFundingEvent`

```swift
case fanFundingEvent
```

### `chatEndedEvent`

```swift
case chatEndedEvent
```

### `sponsorOnlyModeStartedEvent`

```swift
case sponsorOnlyModeStartedEvent
```

### `sponsorOnlyModeEndedEvent`

```swift
case sponsorOnlyModeEndedEvent
```

### `newSponsorEvent`

```swift
case newSponsorEvent
```

### `memberMilestoneChatEvent`

```swift
case memberMilestoneChatEvent
```

### `messageDeletedEvent`

```swift
case messageDeletedEvent
```

### `messageRetractedEvent`

```swift
case messageRetractedEvent
```

### `userBannedEvent`

```swift
case userBannedEvent
```

### `superChatEvent`

```swift
case superChatEvent
```

### `superStickerEvent`

```swift
case superStickerEvent
```
