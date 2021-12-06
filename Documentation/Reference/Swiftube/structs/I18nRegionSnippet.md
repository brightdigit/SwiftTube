**STRUCT**

# `I18nRegionSnippet`

```swift
public struct I18nRegionSnippet: Model
```

Basic details about an i18n region, such as region code and human-readable name.

## Properties
### `gl`

```swift
public var gl: String?
```

The region code as a 2-letter ISO country code.

### `name`

```swift
public var name: String?
```

The human-readable name of the region.

## Methods
### `init(gl:name:)`

```swift
public init(gl: String? = nil, name: String? = nil)
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