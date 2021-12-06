**STRUCT**

# `VideoFileDetails`

```swift
public struct VideoFileDetails: Model
```

Describes original video file properties, including technical details about audio and video streams, but also metadata information like content length, digitization time, or geotagging information.

## Properties
### `audioStreams`

```swift
public var audioStreams: [VideoFileDetailsAudioStream]?
```

A list of audio streams contained in the uploaded video file. Each item in the list contains detailed metadata about an audio stream.

### `bitrateBps`

```swift
public var bitrateBps: String?
```

The uploaded video file's combined (video and audio) bitrate in bits per second.

### `container`

```swift
public var container: String?
```

The uploaded video file's container format.

### `creationTime`

```swift
public var creationTime: String?
```

The date and time when the uploaded video file was created. The value is specified in ISO 8601 format. Currently, the following ISO 8601 formats are supported: - Date only: YYYY-MM-DD - Naive time: YYYY-MM-DDTHH:MM:SS - Time with timezone: YYYY-MM-DDTHH:MM:SS+HH:MM

### `durationMs`

```swift
public var durationMs: String?
```

The length of the uploaded video in milliseconds.

### `fileName`

```swift
public var fileName: String?
```

The uploaded file's name. This field is present whether a video file or another type of file was uploaded.

### `fileSize`

```swift
public var fileSize: String?
```

The uploaded file's size in bytes. This field is present whether a video file or another type of file was uploaded.

### `fileType`

```swift
public var fileType: FileType?
```

The uploaded file's type as detected by YouTube's video processing engine. Currently, YouTube only processes video files, but this field is present whether a video file or another type of file was uploaded.

### `videoStreams`

```swift
public var videoStreams: [VideoFileDetailsVideoStream]?
```

A list of video streams contained in the uploaded video file. Each item in the list contains detailed metadata about a video stream.

## Methods
### `init(audioStreams:bitrateBps:container:creationTime:durationMs:fileName:fileSize:fileType:videoStreams:)`

```swift
public init(audioStreams: [VideoFileDetailsAudioStream]? = nil, bitrateBps: String? = nil, container: String? = nil, creationTime: String? = nil, durationMs: String? = nil, fileName: String? = nil, fileSize: String? = nil, fileType: FileType? = nil, videoStreams: [VideoFileDetailsVideoStream]? = nil)
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