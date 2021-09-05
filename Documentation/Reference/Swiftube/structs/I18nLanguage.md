**STRUCT**

# `I18nLanguage`

```swift
public struct I18nLanguage: Model
```

An *i18nLanguage* resource identifies a UI language currently supported by YouTube.

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

The ID that YouTube uses to uniquely identify the i18n language.

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string "youtube#i18nLanguage".

### `snippet`

```swift
public var snippet: I18nLanguageSnippet?
```

The snippet object contains basic details about the i18n language, such as language code and human-readable name.

## Methods
### `init(etag:id:kind:snippet:)`

```swift
public init(etag: String? = nil, id: String? = nil, kind: String? = nil, snippet: I18nLanguageSnippet? = nil)
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