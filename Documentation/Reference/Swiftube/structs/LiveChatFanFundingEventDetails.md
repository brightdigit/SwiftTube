**STRUCT**

# `LiveChatFanFundingEventDetails`

```swift
public struct LiveChatFanFundingEventDetails: Model
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

The amount of the fund.

### `currency`

```swift
public var currency: String?
```

The currency in which the fund was made.

### `userComment`

```swift
public var userComment: String?
```

The comment added by the user to this fan funding event.

## Methods
### `init(amountDisplayString:amountMicros:currency:userComment:)`

```swift
public init(amountDisplayString: String? = nil, amountMicros: String? = nil, currency: String? = nil, userComment: String? = nil)
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