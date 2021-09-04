**STRUCT**

# `Entity`

```swift
public struct Entity: Model
```

## Properties
### `id`

```swift
public var id: String?
```

### `typeId`

```swift
public var typeId: String?
```

### `url`

```swift
public var url: String?
```

## Methods
### `init(id:typeId:url:)`

```swift
public init(id: String? = nil, typeId: String? = nil, url: String? = nil)
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