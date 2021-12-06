**STRUCT**

# `LocalizedProperty`

```swift
public struct LocalizedProperty: Model
```

## Properties
### `defaultLanguage`

```swift
public var defaultLanguage: LanguageTag?
```

The language of the default property.

### `localized`

```swift
public var localized: [LocalizedString]?
```

## Methods
### `init(defaultLanguage:localized:)`

```swift
public init(defaultLanguage: LanguageTag? = nil, localized: [LocalizedString]? = nil)
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