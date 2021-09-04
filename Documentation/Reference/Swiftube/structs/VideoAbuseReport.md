**STRUCT**

# `VideoAbuseReport`

```swift
public struct VideoAbuseReport: Model
```

## Properties
### `comments`

```swift
public var comments: String?
```

Additional comments regarding the abuse report.

### `language`

```swift
public var language: String?
```

The language that the content was viewed in.

### `reasonId`

```swift
public var reasonId: String?
```

The high-level, or primary, reason that the content is abusive. The value is an abuse report reason ID.

### `secondaryReasonId`

```swift
public var secondaryReasonId: String?
```

The specific, or secondary, reason that this content is abusive (if available). The value is an abuse report reason ID that is a valid secondary reason for the primary reason.

### `videoId`

```swift
public var videoId: String?
```

The ID that YouTube uses to uniquely identify the video.

## Methods
### `init(comments:language:reasonId:secondaryReasonId:videoId:)`

```swift
public init(comments: String? = nil, language: String? = nil, reasonId: String? = nil, secondaryReasonId: String? = nil, videoId: String? = nil)
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