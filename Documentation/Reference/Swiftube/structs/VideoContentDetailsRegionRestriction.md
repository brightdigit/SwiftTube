**STRUCT**

# `VideoContentDetailsRegionRestriction`

```swift
public struct VideoContentDetailsRegionRestriction: Model
```

DEPRECATED Region restriction of the video.

## Properties
### `allowed`

```swift
public var allowed: [String]?
```

A list of region codes that identify countries where the video is viewable. If this property is present and a country is not listed in its value, then the video is blocked from appearing in that country. If this property is present and contains an empty list, the video is blocked in all countries.

### `blocked`

```swift
public var blocked: [String]?
```

A list of region codes that identify countries where the video is blocked. If this property is present and a country is not listed in its value, then the video is viewable in that country. If this property is present and contains an empty list, the video is viewable in all countries.

## Methods
### `init(allowed:blocked:)`

```swift
public init(allowed: [String]? = nil, blocked: [String]? = nil)
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