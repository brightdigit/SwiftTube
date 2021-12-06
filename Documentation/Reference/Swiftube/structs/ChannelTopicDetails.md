**STRUCT**

# `ChannelTopicDetails`

```swift
public struct ChannelTopicDetails: Model
```

Freebase topic information related to the channel.

## Properties
### `topicCategories`

```swift
public var topicCategories: [String]?
```

A list of Wikipedia URLs that describe the channel's content.

### `topicIds`

```swift
public var topicIds: [String]?
```

A list of Freebase topic IDs associated with the channel. You can retrieve information about each topic using the Freebase Topic API.

## Methods
### `init(topicCategories:topicIds:)`

```swift
public init(topicCategories: [String]? = nil, topicIds: [String]? = nil)
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