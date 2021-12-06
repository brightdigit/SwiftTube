**STRUCT**

# `I18nLanguageSnippet`

```swift
public struct I18nLanguageSnippet: Model
```

Basic details about an i18n language, such as language code and human-readable name.

## Properties
### `hl`

```swift
public var hl: String?
```

A short BCP-47 code that uniquely identifies a language.

### `name`

```swift
public var name: String?
```

The human-readable name of the language in the language itself.

## Methods
### `init(hl:name:)`

```swift
public init(hl: String? = nil, name: String? = nil)
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