**STRUCT**

# `LiveBroadcastContentDetails`

```swift
public struct LiveBroadcastContentDetails: Model
```

Detailed settings of a broadcast.

## Properties
### `boundStreamId`

```swift
public var boundStreamId: String?
```

This value uniquely identifies the live stream bound to the broadcast.

### `boundStreamLastUpdateTimeMs`

```swift
public var boundStreamLastUpdateTimeMs: DateTime?
```

The date and time that the live stream referenced by boundStreamId was last updated.

### `closedCaptionsType`

```swift
public var closedCaptionsType: ClosedCaptionsType?
```

### `enableAutoStart`

```swift
public var enableAutoStart: Bool?
```

This setting indicates whether auto start is enabled for this broadcast. The default value for this property is false. This setting can only be used by Events.

### `enableAutoStop`

```swift
public var enableAutoStop: Bool?
```

This setting indicates whether auto stop is enabled for this broadcast. The default value for this property is false. This setting can only be used by Events.

### `enableClosedCaptions`

```swift
public var enableClosedCaptions: Bool?
```

This setting indicates whether HTTP POST closed captioning is enabled for this broadcast. The ingestion URL of the closed captions is returned through the liveStreams API. This is mutually exclusive with using the closed_captions_type property, and is equivalent to setting closed_captions_type to CLOSED_CAPTIONS_HTTP_POST.

### `enableContentEncryption`

```swift
public var enableContentEncryption: Bool?
```

This setting indicates whether YouTube should enable content encryption for the broadcast.

### `enableDvr`

```swift
public var enableDvr: Bool?
```

This setting determines whether viewers can access DVR controls while watching the video. DVR controls enable the viewer to control the video playback experience by pausing, rewinding, or fast forwarding content. The default value for this property is true. *Important:* You must set the value to true and also set the enableArchive property's value to true if you want to make playback available immediately after the broadcast ends.

### `enableEmbed`

```swift
public var enableEmbed: Bool?
```

This setting indicates whether the broadcast video can be played in an embedded player. If you choose to archive the video (using the enableArchive property), this setting will also apply to the archived video.

### `enableLowLatency`

```swift
public var enableLowLatency: Bool?
```

Indicates whether this broadcast has low latency enabled.

### `latencyPreference`

```swift
public var latencyPreference: LatencyPreference?
```

If both this and enable_low_latency are set, they must match. LATENCY_NORMAL should match enable_low_latency=false LATENCY_LOW should match enable_low_latency=true LATENCY_ULTRA_LOW should have enable_low_latency omitted.

### `mesh`

```swift
public var mesh: File?
```

The mesh for projecting the video if projection is mesh. The mesh value must be a UTF-8 string containing the base-64 encoding of 3D mesh data that follows the Spherical Video V2 RFC specification for an mshp box, excluding the box size and type but including the following four reserved zero bytes for the version and flags.

### `monitorStream`

```swift
public var monitorStream: MonitorStreamInfo?
```

The monitorStream object contains information about the monitor stream, which the broadcaster can use to review the event content before the broadcast stream is shown publicly.

### `projection`

```swift
public var projection: Projection?
```

The projection format of this broadcast. This defaults to rectangular.

### `recordFromStart`

```swift
public var recordFromStart: Bool?
```

Automatically start recording after the event goes live. The default value for this property is true. *Important:* You must also set the enableDvr property's value to true if you want the playback to be available immediately after the broadcast ends. If you set this property's value to true but do not also set the enableDvr property to true, there may be a delay of around one day before the archived video will be available for playback.

### `startWithSlate`

```swift
public var startWithSlate: Bool?
```

This setting indicates whether the broadcast should automatically begin with an in-stream slate when you update the broadcast's status to live. After updating the status, you then need to send a liveCuepoints.insert request that sets the cuepoint's eventState to end to remove the in-stream slate and make your broadcast stream visible to viewers.

### `stereoLayout`

```swift
public var stereoLayout: StereoLayout?
```

The 3D stereo layout of this broadcast. This defaults to mono.

## Methods
### `init(boundStreamId:boundStreamLastUpdateTimeMs:closedCaptionsType:enableAutoStart:enableAutoStop:enableClosedCaptions:enableContentEncryption:enableDvr:enableEmbed:enableLowLatency:latencyPreference:mesh:monitorStream:projection:recordFromStart:startWithSlate:stereoLayout:)`

```swift
public init(boundStreamId: String? = nil, boundStreamLastUpdateTimeMs: DateTime? = nil, closedCaptionsType: ClosedCaptionsType? = nil, enableAutoStart: Bool? = nil, enableAutoStop: Bool? = nil, enableClosedCaptions: Bool? = nil, enableContentEncryption: Bool? = nil, enableDvr: Bool? = nil, enableEmbed: Bool? = nil, enableLowLatency: Bool? = nil, latencyPreference: LatencyPreference? = nil, mesh: File? = nil, monitorStream: MonitorStreamInfo? = nil, projection: Projection? = nil, recordFromStart: Bool? = nil, startWithSlate: Bool? = nil, stereoLayout: StereoLayout? = nil)
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