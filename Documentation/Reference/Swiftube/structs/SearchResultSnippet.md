**STRUCT**

# `SearchResultSnippet`

```swift
public struct SearchResultSnippet: Model
```

Basic details about a search result, including title, description and thumbnails of the item referenced by the search result.

## Properties
### `channelId`

```swift
public var channelId: String?
```

The value that YouTube uses to uniquely identify the channel that published the resource that the search result identifies.

### `channelTitle`

```swift
public var channelTitle: String?
```

The title of the channel that published the resource that the search result identifies.

### `description`

```swift
public var description: String?
```

A description of the search result.

### `liveBroadcastContent`

```swift
public var liveBroadcastContent: LiveBroadcastContent?
```

It indicates if the resource (video or channel) has upcoming/active live broadcast content. Or it's "none" if there is not any upcoming/active live broadcasts.

### `publishedAt`

```swift
public var publishedAt: DateTime?
```

The creation date and time of the resource that the search result identifies.

### `thumbnails`

```swift
public var thumbnails: ThumbnailDetails?
```

A map of thumbnail images associated with the search result. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail.

### `title`

```swift
public var title: String?
```

The title of the search result.

## Methods
### `init(channelId:channelTitle:description:liveBroadcastContent:publishedAt:thumbnails:title:)`

```swift
public init(channelId: String? = nil, channelTitle: String? = nil, description: String? = nil, liveBroadcastContent: LiveBroadcastContent? = nil, publishedAt: DateTime? = nil, thumbnails: ThumbnailDetails? = nil, title: String? = nil)
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