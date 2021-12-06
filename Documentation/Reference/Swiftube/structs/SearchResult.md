**STRUCT**

# `SearchResult`

```swift
public struct SearchResult: Model
```

A search result contains information about a YouTube video, channel, or playlist that matches the search parameters specified in an API request. While a search result points to a uniquely identifiable resource, like a video, it does not have its own persistent data.

## Properties
### `etag`

```swift
public var etag: String?
```

Etag of this resource.

### `id`

```swift
public var id: ResourceId?
```

The id object contains information that can be used to uniquely identify the resource that matches the search request.

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string "youtube#searchResult".

### `snippet`

```swift
public var snippet: SearchResultSnippet?
```

The snippet object contains basic details about a search result, such as its title or description. For example, if the search result is a video, then the title will be the video's title and the description will be the video's description.

## Methods
### `init(etag:id:kind:snippet:)`

```swift
public init(etag: String? = nil, id: ResourceId? = nil, kind: String? = nil, snippet: SearchResultSnippet? = nil)
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