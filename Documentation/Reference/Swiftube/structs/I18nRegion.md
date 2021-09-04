**STRUCT**

# `I18nRegion`

```swift
public struct I18nRegion: Model
```

A *i18nRegion* resource identifies a region where YouTube is available.

## Properties
### `etag`

```swift
public var etag: String?
```

Etag of this resource.

### `id`

```swift
public var id: String?
```

The ID that YouTube uses to uniquely identify the i18n region.

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string "youtube#i18nRegion".

### `snippet`

```swift
public var snippet: I18nRegionSnippet?
```

The snippet object contains basic details about the i18n region, such as region code and human-readable name.

## Methods
### `init(etag:id:kind:snippet:)`

```swift
public init(etag: String? = nil, id: String? = nil, kind: String? = nil, snippet: I18nRegionSnippet? = nil)
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