**STRUCT**

# `AbuseReport`

```swift
public struct AbuseReport: Model
```

## Properties
### `abuseTypes`

```swift
public var abuseTypes: [AbuseType]?
```

### `description`

```swift
public var description: String?
```

### `relatedEntities`

```swift
public var relatedEntities: [RelatedEntity]?
```

### `subject`

```swift
public var subject: Entity?
```

## Methods
### `init(abuseTypes:description:relatedEntities:subject:)`

```swift
public init(abuseTypes: [AbuseType]? = nil, description: String? = nil, relatedEntities: [RelatedEntity]? = nil, subject: Entity? = nil)
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