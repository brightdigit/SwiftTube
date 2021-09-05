**STRUCT**

# `VideoStatistics`

```swift
public struct VideoStatistics: Model
```

Statistics about the video, such as the number of times the video was viewed or liked.

## Properties
### `commentCount`

```swift
public var commentCount: String?
```

The number of comments for the video.

### `dislikeCount`

```swift
public var dislikeCount: String?
```

The number of users who have indicated that they disliked the video by giving it a negative rating.

### `favoriteCount`

```swift
public var favoriteCount: String?
```

The number of users who currently have the video marked as a favorite video.

### `likeCount`

```swift
public var likeCount: String?
```

The number of users who have indicated that they liked the video by giving it a positive rating.

### `viewCount`

```swift
public var viewCount: String?
```

The number of times the video has been viewed.

## Methods
### `init(commentCount:dislikeCount:favoriteCount:likeCount:viewCount:)`

```swift
public init(commentCount: String? = nil, dislikeCount: String? = nil, favoriteCount: String? = nil, likeCount: String? = nil, viewCount: String? = nil)
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