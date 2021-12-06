**STRUCT**

# `SubscriptionSubscriberSnippet`

```swift
public struct SubscriptionSubscriberSnippet: Model
```

Basic details about a subscription's subscriber including title, description, channel ID and thumbnails.

## Properties
### `channelId`

```swift
public var channelId: String?
```

The channel ID of the subscriber.

### `description`

```swift
public var description: String?
```

The description of the subscriber.

### `thumbnails`

```swift
public var thumbnails: ThumbnailDetails?
```

Thumbnails for this subscriber.

### `title`

```swift
public var title: String?
```

The title of the subscriber.

## Methods
### `init(channelId:description:thumbnails:title:)`

```swift
public init(channelId: String? = nil, description: String? = nil, thumbnails: ThumbnailDetails? = nil, title: String? = nil)
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