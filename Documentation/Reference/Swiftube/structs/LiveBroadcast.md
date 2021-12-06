**STRUCT**

# `LiveBroadcast`

```swift
public struct LiveBroadcast: Model
```

A *liveBroadcast* resource represents an event that will be streamed, via live video, on YouTube.

## Properties
### `contentDetails`

```swift
public var contentDetails: LiveBroadcastContentDetails?
```

The contentDetails object contains information about the event's video content, such as whether the content can be shown in an embedded video player or if it will be archived and therefore available for viewing after the event has concluded.

### `etag`

```swift
public var etag: String?
```

Etag of this resource.

### `id`

```swift
public var id: String?
```

The ID that YouTube assigns to uniquely identify the broadcast.

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string "youtube#liveBroadcast".

### `snippet`

```swift
public var snippet: LiveBroadcastSnippet?
```

The snippet object contains basic details about the event, including its title, description, start time, and end time.

### `statistics`

```swift
public var statistics: LiveBroadcastStatistics?
```

The statistics object contains info about the event's current stats. These include concurrent viewers and total chat count. Statistics can change (in either direction) during the lifetime of an event. Statistics are only returned while the event is live.

### `status`

```swift
public var status: LiveBroadcastStatus?
```

The status object contains information about the event's status.

## Methods
### `init(contentDetails:etag:id:kind:snippet:statistics:status:)`

```swift
public init(contentDetails: LiveBroadcastContentDetails? = nil, etag: String? = nil, id: String? = nil, kind: String? = nil, snippet: LiveBroadcastSnippet? = nil, statistics: LiveBroadcastStatistics? = nil, status: LiveBroadcastStatus? = nil)
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