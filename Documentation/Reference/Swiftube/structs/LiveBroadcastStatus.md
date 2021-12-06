**STRUCT**

# `LiveBroadcastStatus`

```swift
public struct LiveBroadcastStatus: Model
```

Live broadcast state.

## Properties
### `lifeCycleStatus`

```swift
public var lifeCycleStatus: LifeCycleStatus?
```

The broadcast's status. The status can be updated using the API's liveBroadcasts.transition method.

### `liveBroadcastPriority`

```swift
public var liveBroadcastPriority: LiveBroadcastPriority?
```

Priority of the live broadcast event (internal state).

### `madeForKids`

```swift
public var madeForKids: Bool?
```

Whether the broadcast is made for kids or not, decided by YouTube instead of the creator. This field is read only.

### `privacyStatus`

```swift
public var privacyStatus: PrivacyStatus?
```

The broadcast's privacy status. Note that the broadcast represents exactly one YouTube video, so the privacy settings are identical to those supported for videos. In addition, you can set this field by modifying the broadcast resource or by setting the privacyStatus field of the corresponding video resource.

### `recordingStatus`

```swift
public var recordingStatus: RecordingStatus?
```

The broadcast's recording status.

### `selfDeclaredMadeForKids`

```swift
public var selfDeclaredMadeForKids: Bool?
```

This field will be set to True if the creator declares the broadcast to be kids only: go/live-cw-work.

## Methods
### `init(lifeCycleStatus:liveBroadcastPriority:madeForKids:privacyStatus:recordingStatus:selfDeclaredMadeForKids:)`

```swift
public init(lifeCycleStatus: LifeCycleStatus? = nil, liveBroadcastPriority: LiveBroadcastPriority? = nil, madeForKids: Bool? = nil, privacyStatus: PrivacyStatus? = nil, recordingStatus: RecordingStatus? = nil, selfDeclaredMadeForKids: Bool? = nil)
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