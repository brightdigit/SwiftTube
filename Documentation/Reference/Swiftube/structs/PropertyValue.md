**STRUCT**

# `PropertyValue`

```swift
public struct PropertyValue: Model
```

A pair Property / Value.

## Properties
### `property`

```swift
public var property: String?
```

A property.

### `value`

```swift
public var value: String?
```

The property's value.

## Methods
### `init(property:value:)`

```swift
public init(property: String? = nil, value: String? = nil)
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