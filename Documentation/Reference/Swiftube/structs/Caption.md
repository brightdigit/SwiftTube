**STRUCT**

# `Caption`

```swift
public struct Caption: Model
```

A *caption* resource represents a YouTube caption track. A caption track is associated with exactly one YouTube video.

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

The ID that YouTube uses to uniquely identify the caption track.

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string "youtube#caption".

### `snippet`

```swift
public var snippet: CaptionSnippet?
```

The snippet object contains basic details about the caption.

## Methods
### `init(etag:id:kind:snippet:)`

```swift
public init(etag: String? = nil, id: String? = nil, kind: String? = nil, snippet: CaptionSnippet? = nil)
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