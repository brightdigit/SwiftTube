**STRUCT**

# `IngestionInfo`

```swift
public struct IngestionInfo: Model
```

Describes information necessary for ingesting an RTMP or an HTTP stream.

## Properties
### `backupIngestionAddress`

```swift
public var backupIngestionAddress: String?
```

The backup ingestion URL that you should use to stream video to YouTube. You have the option of simultaneously streaming the content that you are sending to the ingestionAddress to this URL.

### `ingestionAddress`

```swift
public var ingestionAddress: String?
```

The primary ingestion URL that you should use to stream video to YouTube. You must stream video to this URL. Depending on which application or tool you use to encode your video stream, you may need to enter the stream URL and stream name separately or you may need to concatenate them in the following format: *STREAM_URL/STREAM_NAME*

### `rtmpsBackupIngestionAddress`

```swift
public var rtmpsBackupIngestionAddress: String?
```

This ingestion url may be used instead of backupIngestionAddress in order to stream via RTMPS. Not applicable to non-RTMP streams.

### `rtmpsIngestionAddress`

```swift
public var rtmpsIngestionAddress: String?
```

This ingestion url may be used instead of ingestionAddress in order to stream via RTMPS. Not applicable to non-RTMP streams.

### `streamName`

```swift
public var streamName: String?
```

The HTTP or RTMP stream name that YouTube assigns to the video stream.

## Methods
### `init(backupIngestionAddress:ingestionAddress:rtmpsBackupIngestionAddress:rtmpsIngestionAddress:streamName:)`

```swift
public init(backupIngestionAddress: String? = nil, ingestionAddress: String? = nil, rtmpsBackupIngestionAddress: String? = nil, rtmpsIngestionAddress: String? = nil, streamName: String? = nil)
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