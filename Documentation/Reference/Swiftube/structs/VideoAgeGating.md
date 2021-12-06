**STRUCT**

# `VideoAgeGating`

```swift
public struct VideoAgeGating: Model
```

## Properties
### `alcoholContent`

```swift
public var alcoholContent: Bool?
```

Indicates whether or not the video has alcoholic beverage content. Only users of legal purchasing age in a particular country, as identified by ICAP, can view the content.

### `restricted`

```swift
public var restricted: Bool?
```

Age-restricted trailers. For redband trailers and adult-rated video-games. Only users aged 18+ can view the content. The the field is true the content is restricted to viewers aged 18+. Otherwise The field won't be present.

### `videoGameRating`

```swift
public var videoGameRating: VideoGameRating?
```

Video game rating, if any.

## Methods
### `init(alcoholContent:restricted:videoGameRating:)`

```swift
public init(alcoholContent: Bool? = nil, restricted: Bool? = nil, videoGameRating: VideoGameRating? = nil)
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