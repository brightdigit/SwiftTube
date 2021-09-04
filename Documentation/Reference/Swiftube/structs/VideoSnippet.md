**STRUCT**

# `VideoSnippet`

```swift
public struct VideoSnippet: Model
```

Basic details about a video, including title, description, uploader, thumbnails and category.

## Properties
### `categoryId`

```swift
public var categoryId: String?
```

The YouTube video category associated with the video.

### `channelId`

```swift
public var channelId: String?
```

The ID that YouTube uses to uniquely identify the channel that the video was uploaded to.

### `channelTitle`

```swift
public var channelTitle: String?
```

Channel title for the channel that the video belongs to.

### `defaultAudioLanguage`

```swift
public var defaultAudioLanguage: String?
```

The default_audio_language property specifies the language spoken in the video's default audio track.

### `defaultLanguage`

```swift
public var defaultLanguage: String?
```

The language of the videos's default snippet.

### `description`

```swift
public var description: String?
```

The video's description. @mutable youtube.videos.insert youtube.videos.update

### `liveBroadcastContent`

```swift
public var liveBroadcastContent: LiveBroadcastContent?
```

Indicates if the video is an upcoming/active live broadcast. Or it's "none" if the video is not an upcoming/active live broadcast.

### `localized`

```swift
public var localized: VideoLocalization?
```

Localized snippet selected with the hl parameter. If no such localization exists, this field is populated with the default snippet. (Read-only)

### `publishedAt`

```swift
public var publishedAt: DateTime?
```

The date and time when the video was uploaded.

### `tags`

```swift
public var tags: [String]?
```

A list of keyword tags associated with the video. Tags may contain spaces.

### `thumbnails`

```swift
public var thumbnails: ThumbnailDetails?
```

A map of thumbnail images associated with the video. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail.

### `title`

```swift
public var title: String?
```

The video's title. @mutable youtube.videos.insert youtube.videos.update

## Methods
### `init(categoryId:channelId:channelTitle:defaultAudioLanguage:defaultLanguage:description:liveBroadcastContent:localized:publishedAt:tags:thumbnails:title:)`

```swift
public init(categoryId: String? = nil, channelId: String? = nil, channelTitle: String? = nil, defaultAudioLanguage: String? = nil, defaultLanguage: String? = nil, description: String? = nil, liveBroadcastContent: LiveBroadcastContent? = nil, localized: VideoLocalization? = nil, publishedAt: DateTime? = nil, tags: [String]? = nil, thumbnails: ThumbnailDetails? = nil, title: String? = nil)
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