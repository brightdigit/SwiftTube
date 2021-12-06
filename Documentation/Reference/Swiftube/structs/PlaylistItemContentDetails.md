**STRUCT**

# `PlaylistItemContentDetails`

```swift
public struct PlaylistItemContentDetails: Model
```

## Properties
### `endAt`

```swift
public var endAt: String?
```

The time, measured in seconds from the start of the video, when the video should stop playing. (The playlist owner can specify the times when the video should start and stop playing when the video is played in the context of the playlist.) By default, assume that the video.endTime is the end of the video.

### `note`

```swift
public var note: String?
```

A user-generated note for this item.

### `startAt`

```swift
public var startAt: String?
```

The time, measured in seconds from the start of the video, when the video should start playing. (The playlist owner can specify the times when the video should start and stop playing when the video is played in the context of the playlist.) The default value is 0.

### `videoId`

```swift
public var videoId: String?
```

The ID that YouTube uses to uniquely identify a video. To retrieve the video resource, set the id query parameter to this value in your API request.

### `videoPublishedAt`

```swift
public var videoPublishedAt: DateTime?
```

The date and time that the video was published to YouTube.

## Methods
### `init(endAt:note:startAt:videoId:videoPublishedAt:)`

```swift
public init(endAt: String? = nil, note: String? = nil, startAt: String? = nil, videoId: String? = nil, videoPublishedAt: DateTime? = nil)
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