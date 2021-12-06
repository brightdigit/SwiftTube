**STRUCT**

# `LiveChatSuperChatDetails`

```swift
public struct LiveChatSuperChatDetails: Model
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

### `tier`

```swift
public var tier: Int?
```

The tier in which the amount belongs. Lower amounts belong to lower tiers. The lowest tier is 1.

### `userComment`

```swift
public var userComment: String?
```

The comment added by the user to this Super Chat event.

## Methods
### `init(amountDisplayString:amountMicros:currency:tier:userComment:)`

```swift
public init(amountDisplayString: String? = nil, amountMicros: String? = nil, currency: String? = nil, tier: Int? = nil, userComment: String? = nil)
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