**STRUCT**

# `SuperChatEventSnippet`

```swift
public struct SuperChatEventSnippet: Model
```

## Properties
### `amountMicros`

```swift
public var amountMicros: String?
```

The purchase amount, in micros of the purchase currency. e.g., 1 is represented as 1000000.

### `channelId`

```swift
public var channelId: String?
```

Channel id where the event occurred.

### `commentText`

```swift
public var commentText: String?
```

The text contents of the comment left by the user.

### `createdAt`

```swift
public var createdAt: DateTime?
```

The date and time when the event occurred.

### `currency`

```swift
public var currency: String?
```

The currency in which the purchase was made. ISO 4217.

### `displayString`

```swift
public var displayString: String?
```

A rendered string that displays the purchase amount and currency (e.g., "$1.00"). The string is rendered for the given language.

### `isSuperStickerEvent`

```swift
public var isSuperStickerEvent: Bool?
```

True if this event is a Super Sticker event.

### `messageType`

```swift
public var messageType: Int?
```

The tier for the paid message, which is based on the amount of money spent to purchase the message.

### `superStickerMetadata`

```swift
public var superStickerMetadata: SuperStickerMetadata?
```

If this event is a Super Sticker event, this field will contain metadata about the Super Sticker.

### `supporterDetails`

```swift
public var supporterDetails: ChannelProfileDetails?
```

Details about the supporter.

## Methods
### `init(amountMicros:channelId:commentText:createdAt:currency:displayString:isSuperStickerEvent:messageType:superStickerMetadata:supporterDetails:)`

```swift
public init(amountMicros: String? = nil, channelId: String? = nil, commentText: String? = nil, createdAt: DateTime? = nil, currency: String? = nil, displayString: String? = nil, isSuperStickerEvent: Bool? = nil, messageType: Int? = nil, superStickerMetadata: SuperStickerMetadata? = nil, supporterDetails: ChannelProfileDetails? = nil)
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