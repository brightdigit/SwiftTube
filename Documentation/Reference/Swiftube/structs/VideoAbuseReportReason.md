**STRUCT**

# `VideoAbuseReportReason`

```swift
public struct VideoAbuseReportReason: Model
```

A `__videoAbuseReportReason__` resource identifies a reason that a video could be reported as abusive. Video abuse report reasons are used with `video.ReportAbuse`.

## Properties
### `etag`

```swift
public var etag: String?
```

Etag of this resource.

### `id`

```swift
public var id: String?
```

The ID of this abuse report reason.

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string `"youtube#videoAbuseReportReason"`.

### `snippet`

```swift
public var snippet: VideoAbuseReportReasonSnippet?
```

The `snippet` object contains basic details about the abuse report reason.

## Methods
### `init(etag:id:kind:snippet:)`

```swift
public init(etag: String? = nil, id: String? = nil, kind: String? = nil, snippet: VideoAbuseReportReasonSnippet? = nil)
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