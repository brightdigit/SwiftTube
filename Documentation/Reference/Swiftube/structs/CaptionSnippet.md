**STRUCT**

# `CaptionSnippet`

```swift
public struct CaptionSnippet: Model
```

Basic details about a caption track, such as its language and name.

## Properties
### `audioTrackType`

```swift
public var audioTrackType: AudioTrackType?
```

The type of audio track associated with the caption track.

### `failureReason`

```swift
public var failureReason: FailureReason?
```

The reason that YouTube failed to process the caption track. This property is only present if the state property's value is failed.

### `isAutoSynced`

```swift
public var isAutoSynced: Bool?
```

Indicates whether YouTube synchronized the caption track to the audio track in the video. The value will be true if a sync was explicitly requested when the caption track was uploaded. For example, when calling the captions.insert or captions.update methods, you can set the sync parameter to true to instruct YouTube to sync the uploaded track to the video. If the value is false, YouTube uses the time codes in the uploaded caption track to determine when to display captions.

### `isCC`

```swift
public var isCC: Bool?
```

Indicates whether the track contains closed captions for the deaf and hard of hearing. The default value is false.

### `isDraft`

```swift
public var isDraft: Bool?
```

Indicates whether the caption track is a draft. If the value is true, then the track is not publicly visible. The default value is false. @mutable youtube.captions.insert youtube.captions.update

### `isEasyReader`

```swift
public var isEasyReader: Bool?
```

Indicates whether caption track is formatted for "easy reader," meaning it is at a third-grade level for language learners. The default value is false.

### `isLarge`

```swift
public var isLarge: Bool?
```

Indicates whether the caption track uses large text for the vision-impaired. The default value is false.

### `language`

```swift
public var language: String?
```

The language of the caption track. The property value is a BCP-47 language tag.

### `lastUpdated`

```swift
public var lastUpdated: DateTime?
```

The date and time when the caption track was last updated.

### `name`

```swift
public var name: String?
```

The name of the caption track. The name is intended to be visible to the user as an option during playback.

### `status`

```swift
public var status: Status?
```

The caption track's status.

### `trackKind`

```swift
public var trackKind: TrackKind?
```

The caption track's type.

### `videoId`

```swift
public var videoId: String?
```

The ID that YouTube uses to uniquely identify the video associated with the caption track. @mutable youtube.captions.insert

## Methods
### `init(audioTrackType:failureReason:isAutoSynced:isCC:isDraft:isEasyReader:isLarge:language:lastUpdated:name:status:trackKind:videoId:)`

```swift
public init(audioTrackType: AudioTrackType? = nil, failureReason: FailureReason? = nil, isAutoSynced: Bool? = nil, isCC: Bool? = nil, isDraft: Bool? = nil, isEasyReader: Bool? = nil, isLarge: Bool? = nil, language: String? = nil, lastUpdated: DateTime? = nil, name: String? = nil, status: Status? = nil, trackKind: TrackKind? = nil, videoId: String? = nil)
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