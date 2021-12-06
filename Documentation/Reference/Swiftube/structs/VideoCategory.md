**STRUCT**

# `VideoCategory`

```swift
public struct VideoCategory: Model
```

A *videoCategory* resource identifies a category that has been or could be associated with uploaded videos.

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

The ID that YouTube uses to uniquely identify the video category.

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string "youtube#videoCategory".

### `snippet`

```swift
public var snippet: VideoCategorySnippet?
```

The snippet object contains basic details about the video category, including its title.

## Methods
### `init(etag:id:kind:snippet:)`

```swift
public init(etag: String? = nil, id: String? = nil, kind: String? = nil, snippet: VideoCategorySnippet? = nil)
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