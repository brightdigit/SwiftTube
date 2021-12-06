**STRUCT**

# `Activity`

```swift
public struct Activity: Model
```

An *activity* resource contains information about an action that a particular channel, or user, has taken on YouTube.The actions reported in activity feeds include rating a video, sharing a video, marking a video as a favorite, commenting on a video, uploading a video, and so forth. Each activity resource identifies the type of action, the channel associated with the action, and the resource(s) associated with the action, such as the video that was rated or uploaded.

## Properties
### `contentDetails`

```swift
public var contentDetails: ActivityContentDetails?
```

The contentDetails object contains information about the content associated with the activity. For example, if the snippet.type value is videoRated, then the contentDetails object's content identifies the rated video.

### `etag`

```swift
public var etag: String?
```

Etag of this resource

### `id`

```swift
public var id: String?
```

The ID that YouTube uses to uniquely identify the activity.

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string "youtube#activity".

### `snippet`

```swift
public var snippet: ActivitySnippet?
```

The snippet object contains basic details about the activity, including the activity's type and group ID.

## Methods
### `init(contentDetails:etag:id:kind:snippet:)`

```swift
public init(contentDetails: ActivityContentDetails? = nil, etag: String? = nil, id: String? = nil, kind: String? = nil, snippet: ActivitySnippet? = nil)
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