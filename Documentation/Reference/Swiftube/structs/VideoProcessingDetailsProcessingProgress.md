**STRUCT**

# `VideoProcessingDetailsProcessingProgress`

```swift
public struct VideoProcessingDetailsProcessingProgress: Model
```

Video processing progress and completion time estimate.

## Properties
### `partsProcessed`

```swift
public var partsProcessed: String?
```

The number of parts of the video that YouTube has already processed. You can estimate the percentage of the video that YouTube has already processed by calculating: 100 * parts_processed / parts_total Note that since the estimated number of parts could increase without a corresponding increase in the number of parts that have already been processed, it is possible that the calculated progress could periodically decrease while YouTube processes a video.

### `partsTotal`

```swift
public var partsTotal: String?
```

An estimate of the total number of parts that need to be processed for the video. The number may be updated with more precise estimates while YouTube processes the video.

### `timeLeftMs`

```swift
public var timeLeftMs: String?
```

An estimate of the amount of time, in millseconds, that YouTube needs to finish processing the video.

## Methods
### `init(partsProcessed:partsTotal:timeLeftMs:)`

```swift
public init(partsProcessed: String? = nil, partsTotal: String? = nil, timeLeftMs: String? = nil)
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