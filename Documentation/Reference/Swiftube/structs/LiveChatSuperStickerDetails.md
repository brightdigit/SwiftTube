**STRUCT**

# `LiveChatSuperStickerDetails`

```swift
public struct LiveChatSuperStickerDetails: Model
```

## Properties
### `amountDisplayString`

```swift
public var amountDisplayString: String?
```

A rendered string that displays the fund amount and currency to the user.

### `amountMicros`

```swift
public var amountMicros: String?
```

The amount purchased by the user, in micros (1,750,000 micros = 1.75).

### `currency`

```swift
public var currency: String?
```

The currency in which the purchase was made.

### `superStickerMetadata`

```swift
public var superStickerMetadata: SuperStickerMetadata?
```

Information about the Super Sticker.

### `tier`

```swift
public var tier: Int?
```

The tier in which the amount belongs. Lower amounts belong to lower tiers. The lowest tier is 1.

## Methods
### `init(amountDisplayString:amountMicros:currency:superStickerMetadata:tier:)`

```swift
public init(amountDisplayString: String? = nil, amountMicros: String? = nil, currency: String? = nil, superStickerMetadata: SuperStickerMetadata? = nil, tier: Int? = nil)
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