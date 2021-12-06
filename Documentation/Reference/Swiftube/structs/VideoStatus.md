**STRUCT**

# `VideoStatus`

```swift
public struct VideoStatus: Model
```

Basic details about a video category, such as its localized title. Next Id: 17

## Properties
### `embeddable`

```swift
public var embeddable: Bool?
```

This value indicates if the video can be embedded on another website. @mutable youtube.videos.insert youtube.videos.update

### `failureReason`

```swift
public var failureReason: FailureReason?
```

This value explains why a video failed to upload. This property is only present if the uploadStatus property indicates that the upload failed.

### `license`

```swift
public var license: License?
```

The video's license. @mutable youtube.videos.insert youtube.videos.update

### `madeForKids`

```swift
public var madeForKids: Bool?
```

### `privacyStatus`

```swift
public var privacyStatus: PrivacyStatus?
```

The video's privacy status.

### `publicStatsViewable`

```swift
public var publicStatsViewable: Bool?
```

This value indicates if the extended video statistics on the watch page can be viewed by everyone. Note that the view count, likes, etc will still be visible if this is disabled. @mutable youtube.videos.insert youtube.videos.update

### `publishAt`

```swift
public var publishAt: DateTime?
```

The date and time when the video is scheduled to publish. It can be set only if the privacy status of the video is private..

### `rejectionReason`

```swift
public var rejectionReason: RejectionReason?
```

This value explains why YouTube rejected an uploaded video. This property is only present if the uploadStatus property indicates that the upload was rejected.

### `selfDeclaredMadeForKids`

```swift
public var selfDeclaredMadeForKids: Bool?
```

### `uploadStatus`

```swift
public var uploadStatus: UploadStatus?
```

The status of the uploaded video.

## Methods
### `init(embeddable:failureReason:license:madeForKids:privacyStatus:publicStatsViewable:publishAt:rejectionReason:selfDeclaredMadeForKids:uploadStatus:)`

```swift
public init(embeddable: Bool? = nil, failureReason: FailureReason? = nil, license: License? = nil, madeForKids: Bool? = nil, privacyStatus: PrivacyStatus? = nil, publicStatsViewable: Bool? = nil, publishAt: DateTime? = nil, rejectionReason: RejectionReason? = nil, selfDeclaredMadeForKids: Bool? = nil, uploadStatus: UploadStatus? = nil)
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