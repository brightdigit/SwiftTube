**STRUCT**

# `VideoRating`

```swift
public struct VideoRating: Model
```

Basic details about rating of a video.

## Properties
### `rating`

```swift
public var rating: Rating?
```

Rating of a video.

### `videoId`

```swift
public var videoId: String?
```

The ID that YouTube uses to uniquely identify the video.

## Methods
### `init(rating:videoId:)`

```swift
public init(rating: Rating? = nil, videoId: String? = nil)
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