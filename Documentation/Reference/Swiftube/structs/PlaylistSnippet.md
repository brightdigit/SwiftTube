**STRUCT**

# `PlaylistSnippet`

```swift
public struct PlaylistSnippet: Model
```

Basic details about a playlist, including title, description and thumbnails.

## Properties
### `channelId`

```swift
public var channelId: String?
```

The ID that YouTube uses to uniquely identify the channel that published the playlist.

### `channelTitle`

```swift
public var channelTitle: String?
```

The channel title of the channel that the video belongs to.

### `defaultLanguage`

```swift
public var defaultLanguage: String?
```

The language of the playlist's default title and description.

### `description`

```swift
public var description: String?
```

The playlist's description.

### `localized`

```swift
public var localized: PlaylistLocalization?
```

Localized title and description, read-only.

### `publishedAt`

```swift
public var publishedAt: DateTime?
```

The date and time that the playlist was created.

### `tags`

```swift
public var tags: [String]?
```

Keyword tags associated with the playlist.

### `thumbnailVideoId`

```swift
public var thumbnailVideoId: String?
```

Note: if the playlist has a custom thumbnail, this field will not be populated. The video id selected by the user that will be used as the thumbnail of this playlist. This field defaults to the first publicly viewable video in the playlist, if: 1. The user has never selected a video to be the thumbnail of the playlist. 2. The user selects a video to be the thumbnail, and then removes that video from the playlist. 3. The user selects a non-owned video to be the thumbnail, but that video becomes private, or gets deleted.

### `thumbnails`

```swift
public var thumbnails: ThumbnailDetails?
```

A map of thumbnail images associated with the playlist. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail.

### `title`

```swift
public var title: String?
```

The playlist's title.

## Methods
### `init(channelId:channelTitle:defaultLanguage:description:localized:publishedAt:tags:thumbnailVideoId:thumbnails:title:)`

```swift
public init(channelId: String? = nil, channelTitle: String? = nil, defaultLanguage: String? = nil, description: String? = nil, localized: PlaylistLocalization? = nil, publishedAt: DateTime? = nil, tags: [String]? = nil, thumbnailVideoId: String? = nil, thumbnails: ThumbnailDetails? = nil, title: String? = nil)
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