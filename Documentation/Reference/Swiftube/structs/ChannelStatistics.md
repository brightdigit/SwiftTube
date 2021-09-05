**STRUCT**

# `ChannelStatistics`

```swift
public struct ChannelStatistics: Model
```

Statistics about a channel: number of subscribers, number of videos in the channel, etc.

## Properties
### `commentCount`

```swift
public var commentCount: String?
```

The number of comments for the channel.

### `hiddenSubscriberCount`

```swift
public var hiddenSubscriberCount: Bool?
```

Whether or not the number of subscribers is shown for this user.

### `subscriberCount`

```swift
public var subscriberCount: String?
```

The number of subscribers that the channel has.

### `videoCount`

```swift
public var videoCount: String?
```

The number of videos uploaded to the channel.

### `viewCount`

```swift
public var viewCount: String?
```

The number of times the channel has been viewed.

## Methods
### `init(commentCount:hiddenSubscriberCount:subscriberCount:videoCount:viewCount:)`

```swift
public init(commentCount: String? = nil, hiddenSubscriberCount: Bool? = nil, subscriberCount: String? = nil, videoCount: String? = nil, viewCount: String? = nil)
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