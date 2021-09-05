**STRUCT**

# `VideoContentDetails`

```swift
public struct VideoContentDetails: Model
```

Details about the content of a YouTube Video.

## Properties
### `caption`

```swift
public var caption: Caption?
```

The value of captions indicates whether the video has captions or not.

### `contentRating`

```swift
public var contentRating: ContentRating?
```

Specifies the ratings that the video received under various rating schemes.

### `countryRestriction`

```swift
public var countryRestriction: AccessPolicy?
```

The countryRestriction object contains information about the countries where a video is (or is not) viewable.

### `definition`

```swift
public var definition: Definition?
```

The value of definition indicates whether the video is available in high definition or only in standard definition.

### `dimension`

```swift
public var dimension: String?
```

The value of dimension indicates whether the video is available in 3D or in 2D.

### `duration`

```swift
public var duration: String?
```

The length of the video. The tag value is an ISO 8601 duration in the format PT#M#S, in which the letters PT indicate that the value specifies a period of time, and the letters M and S refer to length in minutes and seconds, respectively. The # characters preceding the M and S letters are both integers that specify the number of minutes (or seconds) of the video. For example, a value of PT15M51S indicates that the video is 15 minutes and 51 seconds long.

### `hasCustomThumbnail`

```swift
public var hasCustomThumbnail: Bool?
```

Indicates whether the video uploader has provided a custom thumbnail image for the video. This property is only visible to the video uploader.

### `licensedContent`

```swift
public var licensedContent: Bool?
```

The value of is_license_content indicates whether the video is licensed content.

### `projection`

```swift
public var projection: Projection?
```

Specifies the projection format of the video.

### `regionRestriction`

```swift
public var regionRestriction: VideoContentDetailsRegionRestriction?
```

The regionRestriction object contains information about the countries where a video is (or is not) viewable. The object will contain either the contentDetails.regionRestriction.allowed property or the contentDetails.regionRestriction.blocked property.

## Methods
### `init(caption:contentRating:countryRestriction:definition:dimension:duration:hasCustomThumbnail:licensedContent:projection:regionRestriction:)`

```swift
public init(caption: Caption? = nil, contentRating: ContentRating? = nil, countryRestriction: AccessPolicy? = nil, definition: Definition? = nil, dimension: String? = nil, duration: String? = nil, hasCustomThumbnail: Bool? = nil, licensedContent: Bool? = nil, projection: Projection? = nil, regionRestriction: VideoContentDetailsRegionRestriction? = nil)
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