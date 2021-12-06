**STRUCT**

# `AbuseType`

```swift
public struct AbuseType: Model
```

## Properties
### `id`

```swift
public var id: String?
```

## Methods
### `init(id:)`

```swift
public init(id: String? = nil)
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