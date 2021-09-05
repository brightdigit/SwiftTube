**STRUCT**

# `VideoRecordingDetails`

```swift
public struct VideoRecordingDetails: Model
```

Recording information associated with the video.

## Properties
### `location`

```swift
public var location: GeoPoint?
```

The geolocation information associated with the video.

### `locationDescription`

```swift
public var locationDescription: String?
```

The text description of the location where the video was recorded.

### `recordingDate`

```swift
public var recordingDate: DateTime?
```

The date and time when the video was recorded.

## Methods
### `init(location:locationDescription:recordingDate:)`

```swift
public init(location: GeoPoint? = nil, locationDescription: String? = nil, recordingDate: DateTime? = nil)
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