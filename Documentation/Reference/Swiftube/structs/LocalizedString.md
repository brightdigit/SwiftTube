**STRUCT**

# `LocalizedString`

```swift
public struct LocalizedString: Model
```

## Properties
### `language`

```swift
public var language: String?
```

### `value`

```swift
public var value: String?
```

## Methods
### `init(language:value:)`

```swift
public init(language: String? = nil, value: String? = nil)
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