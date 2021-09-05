**STRUCT**

# `VideoAbuseReportReasonSnippet`

```swift
public struct VideoAbuseReportReasonSnippet: Model
```

Basic details about a video category, such as its localized title.

## Properties
### `label`

```swift
public var label: String?
```

The localized label belonging to this abuse report reason.

### `secondaryReasons`

```swift
public var secondaryReasons: [VideoAbuseReportSecondaryReason]?
```

The secondary reasons associated with this reason, if any are available. (There might be 0 or more.)

## Methods
### `init(label:secondaryReasons:)`

```swift
public init(label: String? = nil, secondaryReasons: [VideoAbuseReportSecondaryReason]? = nil)
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