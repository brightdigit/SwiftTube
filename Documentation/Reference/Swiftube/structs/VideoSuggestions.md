**STRUCT**

# `VideoSuggestions`

```swift
public struct VideoSuggestions: Model
```

Specifies suggestions on how to improve video content, including encoding hints, tag suggestions, and editor suggestions.

## Properties
### `editorSuggestions`

```swift
public var editorSuggestions: [EditorSuggestions]?
```

A list of video editing operations that might improve the video quality or playback experience of the uploaded video.

### `processingErrors`

```swift
public var processingErrors: [ProcessingErrors]?
```

A list of errors that will prevent YouTube from successfully processing the uploaded video video. These errors indicate that, regardless of the video's current processing status, eventually, that status will almost certainly be failed.

### `processingHints`

```swift
public var processingHints: [ProcessingHints]?
```

A list of suggestions that may improve YouTube's ability to process the video.

### `processingWarnings`

```swift
public var processingWarnings: [ProcessingWarnings]?
```

A list of reasons why YouTube may have difficulty transcoding the uploaded video or that might result in an erroneous transcoding. These warnings are generated before YouTube actually processes the uploaded video file. In addition, they identify issues that are unlikely to cause the video processing to fail but that might cause problems such as sync issues, video artifacts, or a missing audio track.

### `tagSuggestions`

```swift
public var tagSuggestions: [VideoSuggestionsTagSuggestion]?
```

A list of keyword tags that could be added to the video's metadata to increase the likelihood that users will locate your video when searching or browsing on YouTube.

## Methods
### `init(editorSuggestions:processingErrors:processingHints:processingWarnings:tagSuggestions:)`

```swift
public init(editorSuggestions: [EditorSuggestions]? = nil, processingErrors: [ProcessingErrors]? = nil, processingHints: [ProcessingHints]? = nil, processingWarnings: [ProcessingWarnings]? = nil, tagSuggestions: [VideoSuggestionsTagSuggestion]? = nil)
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