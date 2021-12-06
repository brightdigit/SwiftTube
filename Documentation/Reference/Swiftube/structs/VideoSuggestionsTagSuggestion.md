**STRUCT**

# `VideoSuggestionsTagSuggestion`

```swift
public struct VideoSuggestionsTagSuggestion: Model
```

A single tag suggestion with it's relevance information.

## Properties
### `categoryRestricts`

```swift
public var categoryRestricts: [String]?
```

A set of video categories for which the tag is relevant. You can use this information to display appropriate tag suggestions based on the video category that the video uploader associates with the video. By default, tag suggestions are relevant for all categories if there are no restricts defined for the keyword.

### `tag`

```swift
public var tag: String?
```

The keyword tag suggested for the video.

## Methods
### `init(categoryRestricts:tag:)`

```swift
public init(categoryRestricts: [String]? = nil, tag: String? = nil)
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