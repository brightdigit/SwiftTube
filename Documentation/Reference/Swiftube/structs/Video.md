**STRUCT**

# `Video`

```swift
public struct Video: Model
```

A *video* resource represents a YouTube video.

## Properties
### `ageGating`

```swift
public var ageGating: VideoAgeGating?
```

Age restriction details related to a video. This data can only be retrieved by the video owner.

### `contentDetails`

```swift
public var contentDetails: VideoContentDetails?
```

The contentDetails object contains information about the video content, including the length of the video and its aspect ratio.

### `etag`

```swift
public var etag: String?
```

Etag of this resource.

### `fileDetails`

```swift
public var fileDetails: VideoFileDetails?
```

The fileDetails object encapsulates information about the video file that was uploaded to YouTube, including the file's resolution, duration, audio and video codecs, stream bitrates, and more. This data can only be retrieved by the video owner.

### `id`

```swift
public var id: String?
```

The ID that YouTube uses to uniquely identify the video.

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string "youtube#video".

### `liveStreamingDetails`

```swift
public var liveStreamingDetails: VideoLiveStreamingDetails?
```

The liveStreamingDetails object contains metadata about a live video broadcast. The object will only be present in a video resource if the video is an upcoming, live, or completed live broadcast.

### `localizations`

```swift
public var localizations: [String: VideoLocalization]?
```

The localizations object contains localized versions of the basic details about the video, such as its title and description.

### `monetizationDetails`

```swift
public var monetizationDetails: VideoMonetizationDetails?
```

The monetizationDetails object encapsulates information about the monetization status of the video.

### `player`

```swift
public var player: VideoPlayer?
```

The player object contains information that you would use to play the video in an embedded player.

### `processingDetails`

```swift
public var processingDetails: VideoProcessingDetails?
```

The processingDetails object encapsulates information about YouTube's progress in processing the uploaded video file. The properties in the object identify the current processing status and an estimate of the time remaining until YouTube finishes processing the video. This part also indicates whether different types of data or content, such as file details or thumbnail images, are available for the video. The processingProgress object is designed to be polled so that the video uploaded can track the progress that YouTube has made in processing the uploaded video file. This data can only be retrieved by the video owner.

### `projectDetails`

```swift
public var projectDetails: VideoProjectDetails?
```

The projectDetails object contains information about the project specific video metadata. b/157517979: This part was never populated after it was added. However, it sees non-zero traffic because there is generated client code in the wild that refers to it [1]. We keep this field and do NOT remove it because otherwise V3 would return an error when this part gets requested [2]. [1] https://developers.google.com/resources/api-libraries/documentation/youtube/v3/csharp/latest/classGoogle_1_1Apis_1_1YouTube_1_1v3_1_1Data_1_1VideoProjectDetails.html [2] http://google3/video/youtube/src/python/servers/data_api/common.py?l=1565-1569&rcl=344141677

### `recordingDetails`

```swift
public var recordingDetails: VideoRecordingDetails?
```

The recordingDetails object encapsulates information about the location, date and address where the video was recorded.

### `snippet`

```swift
public var snippet: VideoSnippet?
```

The snippet object contains basic details about the video, such as its title, description, and category.

### `statistics`

```swift
public var statistics: VideoStatistics?
```

The statistics object contains statistics about the video.

### `status`

```swift
public var status: VideoStatus?
```

The status object contains information about the video's uploading, processing, and privacy statuses.

### `suggestions`

```swift
public var suggestions: VideoSuggestions?
```

The suggestions object encapsulates suggestions that identify opportunities to improve the video quality or the metadata for the uploaded video. This data can only be retrieved by the video owner.

### `topicDetails`

```swift
public var topicDetails: VideoTopicDetails?
```

The topicDetails object encapsulates information about Freebase topics associated with the video.

## Methods
### `init(ageGating:contentDetails:etag:fileDetails:id:kind:liveStreamingDetails:localizations:monetizationDetails:player:processingDetails:projectDetails:recordingDetails:snippet:statistics:status:suggestions:topicDetails:)`

```swift
public init(ageGating: VideoAgeGating? = nil, contentDetails: VideoContentDetails? = nil, etag: String? = nil, fileDetails: VideoFileDetails? = nil, id: String? = nil, kind: String? = nil, liveStreamingDetails: VideoLiveStreamingDetails? = nil, localizations: [String: VideoLocalization]? = nil, monetizationDetails: VideoMonetizationDetails? = nil, player: VideoPlayer? = nil, processingDetails: VideoProcessingDetails? = nil, projectDetails: VideoProjectDetails? = nil, recordingDetails: VideoRecordingDetails? = nil, snippet: VideoSnippet? = nil, statistics: VideoStatistics? = nil, status: VideoStatus? = nil, suggestions: VideoSuggestions? = nil, topicDetails: VideoTopicDetails? = nil)
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