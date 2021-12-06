**STRUCT**

# `Thumbnail`

```swift
public struct Thumbnail: Model
```

A thumbnail is an image representing a YouTube resource.

## Properties
### `height`

```swift
public var height: Int?
```

(Optional) Height of the thumbnail image.

### `url`

```swift
public var url: String?
```

The thumbnail image's URL.

### `width`

```swift
public var width: Int?
```

(Optional) Width of the thumbnail image.

## Methods
### `init(height:url:width:)`

```swift
public init(height: Int? = nil, url: String? = nil, width: Int? = nil)
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