**STRUCT**

# `RelatedEntity`

```swift
public struct RelatedEntity: Model
```

## Properties
### `entity`

```swift
public var entity: Entity?
```

## Methods
### `init(entity:)`

```swift
public init(entity: Entity? = nil)
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