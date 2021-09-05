**STRUCT**

# `LiveBroadcastSnippet`

```swift
public struct LiveBroadcastSnippet: Model
```

Basic broadcast information.

## Properties
### `actualEndTime`

```swift
public var actualEndTime: DateTime?
```

The date and time that the broadcast actually ended. This information is only available once the broadcast's state is complete.

### `actualStartTime`

```swift
public var actualStartTime: DateTime?
```

The date and time that the broadcast actually started. This information is only available once the broadcast's state is live.

### `channelId`

```swift
public var channelId: String?
```

The ID that YouTube uses to uniquely identify the channel that is publishing the broadcast.

### `description`

```swift
public var description: String?
```

The broadcast's description. As with the title, you can set this field by modifying the broadcast resource or by setting the description field of the corresponding video resource.

### `isDefaultBroadcast`

```swift
public var isDefaultBroadcast: Bool?
```

Indicates whether this broadcast is the default broadcast. Internal only.

### `liveChatId`

```swift
public var liveChatId: String?
```

The id of the live chat for this broadcast.

### `publishedAt`

```swift
public var publishedAt: DateTime?
```

The date and time that the broadcast was added to YouTube's live broadcast schedule.

### `scheduledEndTime`

```swift
public var scheduledEndTime: DateTime?
```

The date and time that the broadcast is scheduled to end.

### `scheduledStartTime`

```swift
public var scheduledStartTime: DateTime?
```

The date and time that the broadcast is scheduled to start.

### `thumbnails`

```swift
public var thumbnails: ThumbnailDetails?
```

A map of thumbnail images associated with the broadcast. For each nested object in this object, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail.

### `title`

```swift
public var title: String?
```

The broadcast's title. Note that the broadcast represents exactly one YouTube video. You can set this field by modifying the broadcast resource or by setting the title field of the corresponding video resource.

## Methods
### `init(actualEndTime:actualStartTime:channelId:description:isDefaultBroadcast:liveChatId:publishedAt:scheduledEndTime:scheduledStartTime:thumbnails:title:)`

```swift
public init(actualEndTime: DateTime? = nil, actualStartTime: DateTime? = nil, channelId: String? = nil, description: String? = nil, isDefaultBroadcast: Bool? = nil, liveChatId: String? = nil, publishedAt: DateTime? = nil, scheduledEndTime: DateTime? = nil, scheduledStartTime: DateTime? = nil, thumbnails: ThumbnailDetails? = nil, title: String? = nil)
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