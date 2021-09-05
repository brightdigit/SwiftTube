**STRUCT**

# `VideoAbuseReportSecondaryReason`

```swift
public struct VideoAbuseReportSecondaryReason: Model
```

## Properties
### `id`

```swift
public var id: String?
```

The ID of this abuse report secondary reason.

### `label`

```swift
public var label: String?
```

The localized label for this abuse report secondary reason.

## Methods
### `init(id:label:)`

```swift
public init(id: String? = nil, label: String? = nil)
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