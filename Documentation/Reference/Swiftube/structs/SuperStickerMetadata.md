**STRUCT**

# `SuperStickerMetadata`

```swift
public struct SuperStickerMetadata: Model
```

## Properties
### `altText`

```swift
public var altText: String?
```

Internationalized alt text that describes the sticker image and any animation associated with it.

### `altTextLanguage`

```swift
public var altTextLanguage: String?
```

Specifies the localization language in which the alt text is returned.

### `stickerId`

```swift
public var stickerId: String?
```

Unique identifier of the Super Sticker. This is a shorter form of the alt_text that includes pack name and a recognizable characteristic of the sticker.

## Methods
### `init(altText:altTextLanguage:stickerId:)`

```swift
public init(altText: String? = nil, altTextLanguage: String? = nil, stickerId: String? = nil)
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