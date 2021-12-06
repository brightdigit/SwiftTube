**STRUCT**

# `ThumbnailDetails`

```swift
public struct ThumbnailDetails: Model
```

Internal representation of thumbnails for a YouTube resource.

## Properties
### `high`

```swift
public var high: Thumbnail?
```

The high quality image for this resource.

### `maxres`

```swift
public var maxres: Thumbnail?
```

The maximum resolution quality image for this resource.

### `medium`

```swift
public var medium: Thumbnail?
```

The medium quality image for this resource.

### `standard`

```swift
public var standard: Thumbnail?
```

The standard quality image for this resource.

## Methods
### `init(high:maxres:medium:standard:)`

```swift
public init(high: Thumbnail? = nil, maxres: Thumbnail? = nil, medium: Thumbnail? = nil, standard: Thumbnail? = nil)
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