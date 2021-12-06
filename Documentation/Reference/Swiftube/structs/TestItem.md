**STRUCT**

# `TestItem`

```swift
public struct TestItem: Model
```

## Properties
### `featuredPart`

```swift
public var featuredPart: Bool?
```

### `gaia`

```swift
public var gaia: String?
```

### `id`

```swift
public var id: String?
```

### `snippet`

```swift
public var snippet: TestItemTestItemSnippet?
```

## Methods
### `init(featuredPart:gaia:id:snippet:)`

```swift
public init(featuredPart: Bool? = nil, gaia: String? = nil, id: String? = nil, snippet: TestItemTestItemSnippet? = nil)
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