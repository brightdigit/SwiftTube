**STRUCT**

# `VideoTopicDetails`

```swift
public struct VideoTopicDetails: Model
```

Freebase topic information related to the video.

## Properties
### `relevantTopicIds`

```swift
public var relevantTopicIds: [String]?
```

Similar to topic_id, except that these topics are merely relevant to the video. These are topics that may be mentioned in, or appear in the video. You can retrieve information about each topic using Freebase Topic API.

### `topicCategories`

```swift
public var topicCategories: [String]?
```

A list of Wikipedia URLs that provide a high-level description of the video's content.

### `topicIds`

```swift
public var topicIds: [String]?
```

A list of Freebase topic IDs that are centrally associated with the video. These are topics that are centrally featured in the video, and it can be said that the video is mainly about each of these. You can retrieve information about each topic using the < a href="http://wiki.freebase.com/wiki/Topic_API">Freebase Topic API.

## Methods
### `init(relevantTopicIds:topicCategories:topicIds:)`

```swift
public init(relevantTopicIds: [String]? = nil, topicCategories: [String]? = nil, topicIds: [String]? = nil)
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