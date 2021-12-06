**STRUCT**

# `LiveStream`

```swift
public struct LiveStream: Model
```

A live stream describes a live ingestion point.

## Properties
### `cdn`

```swift
public var cdn: CdnSettings?
```

The cdn object defines the live stream's content delivery network (CDN) settings. These settings provide details about the manner in which you stream your content to YouTube.

### `contentDetails`

```swift
public var contentDetails: LiveStreamContentDetails?
```

The content_details object contains information about the stream, including the closed captions ingestion URL.

### `etag`

```swift
public var etag: String?
```

Etag of this resource.

### `id`

```swift
public var id: String?
```

The ID that YouTube assigns to uniquely identify the stream.

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string "youtube#liveStream".

### `snippet`

```swift
public var snippet: LiveStreamSnippet?
```

The snippet object contains basic details about the stream, including its channel, title, and description.

### `status`

```swift
public var status: LiveStreamStatus?
```

The status object contains information about live stream's status.

## Methods
### `init(cdn:contentDetails:etag:id:kind:snippet:status:)`

```swift
public init(cdn: CdnSettings? = nil, contentDetails: LiveStreamContentDetails? = nil, etag: String? = nil, id: String? = nil, kind: String? = nil, snippet: LiveStreamSnippet? = nil, status: LiveStreamStatus? = nil)
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