**STRUCT**

# `VideoProcessingDetails`

```swift
public struct VideoProcessingDetails: Model
```

Describes processing status and progress and availability of some other Video resource parts.

## Properties
### `editorSuggestionsAvailability`

```swift
public var editorSuggestionsAvailability: String?
```

This value indicates whether video editing suggestions, which might improve video quality or the playback experience, are available for the video. You can retrieve these suggestions by requesting the suggestions part in your videos.list() request.

### `fileDetailsAvailability`

```swift
public var fileDetailsAvailability: String?
```

This value indicates whether file details are available for the uploaded video. You can retrieve a video's file details by requesting the fileDetails part in your videos.list() request.

### `processingFailureReason`

```swift
public var processingFailureReason: ProcessingFailureReason?
```

The reason that YouTube failed to process the video. This property will only have a value if the processingStatus property's value is failed.

### `processingIssuesAvailability`

```swift
public var processingIssuesAvailability: String?
```

This value indicates whether the video processing engine has generated suggestions that might improve YouTube's ability to process the the video, warnings that explain video processing problems, or errors that cause video processing problems. You can retrieve these suggestions by requesting the suggestions part in your videos.list() request.

### `processingProgress`

```swift
public var processingProgress: VideoProcessingDetailsProcessingProgress?
```

The processingProgress object contains information about the progress YouTube has made in processing the video. The values are really only relevant if the video's processing status is processing.

### `processingStatus`

```swift
public var processingStatus: ProcessingStatus?
```

The video's processing status. This value indicates whether YouTube was able to process the video or if the video is still being processed.

### `tagSuggestionsAvailability`

```swift
public var tagSuggestionsAvailability: String?
```

This value indicates whether keyword (tag) suggestions are available for the video. Tags can be added to a video's metadata to make it easier for other users to find the video. You can retrieve these suggestions by requesting the suggestions part in your videos.list() request.

### `thumbnailsAvailability`

```swift
public var thumbnailsAvailability: String?
```

This value indicates whether thumbnail images have been generated for the video.

## Methods
### `init(editorSuggestionsAvailability:fileDetailsAvailability:processingFailureReason:processingIssuesAvailability:processingProgress:processingStatus:tagSuggestionsAvailability:thumbnailsAvailability:)`

```swift
public init(editorSuggestionsAvailability: String? = nil, fileDetailsAvailability: String? = nil, processingFailureReason: ProcessingFailureReason? = nil, processingIssuesAvailability: String? = nil, processingProgress: VideoProcessingDetailsProcessingProgress? = nil, processingStatus: ProcessingStatus? = nil, tagSuggestionsAvailability: String? = nil, thumbnailsAvailability: String? = nil)
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