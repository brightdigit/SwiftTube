**STRUCT**

# `LevelDetails`

```swift
public struct LevelDetails: Model
```

## Properties
### `displayName`

```swift
public var displayName: String?
```

The name that should be used when referring to this level.

## Methods
### `init(displayName:)`

```swift
public init(displayName: String? = nil)
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