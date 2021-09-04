**STRUCT**

# `SubscriptionSnippet`

```swift
public struct SubscriptionSnippet: Model
```

Basic details about a subscription, including title, description and thumbnails of the subscribed item.

## Properties
### `channelId`

```swift
public var channelId: String?
```

The ID that YouTube uses to uniquely identify the subscriber's channel.

### `channelTitle`

```swift
public var channelTitle: String?
```

Channel title for the channel that the subscription belongs to.

### `description`

```swift
public var description: String?
```

The subscription's details.

### `publishedAt`

```swift
public var publishedAt: DateTime?
```

The date and time that the subscription was created.

### `resourceId`

```swift
public var resourceId: ResourceId?
```

The id object contains information about the channel that the user subscribed to.

### `thumbnails`

```swift
public var thumbnails: ThumbnailDetails?
```

A map of thumbnail images associated with the video. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail.

### `title`

```swift
public var title: String?
```

The subscription's title.

## Methods
### `init(channelId:channelTitle:description:publishedAt:resourceId:thumbnails:title:)`

```swift
public init(channelId: String? = nil, channelTitle: String? = nil, description: String? = nil, publishedAt: DateTime? = nil, resourceId: ResourceId? = nil, thumbnails: ThumbnailDetails? = nil, title: String? = nil)
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