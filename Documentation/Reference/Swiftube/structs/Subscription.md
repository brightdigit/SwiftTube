**STRUCT**

# `Subscription`

```swift
public struct Subscription: Model
```

A *subscription* resource contains information about a YouTube user subscription. A subscription notifies a user when new videos are added to a channel or when another user takes one of several actions on YouTube, such as uploading a video, rating a video, or commenting on a video.

## Properties
### `contentDetails`

```swift
public var contentDetails: SubscriptionContentDetails?
```

The contentDetails object contains basic statistics about the subscription.

### `etag`

```swift
public var etag: String?
```

Etag of this resource.

### `id`

```swift
public var id: String?
```

The ID that YouTube uses to uniquely identify the subscription.

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string "youtube#subscription".

### `snippet`

```swift
public var snippet: SubscriptionSnippet?
```

The snippet object contains basic details about the subscription, including its title and the channel that the user subscribed to.

### `subscriberSnippet`

```swift
public var subscriberSnippet: SubscriptionSubscriberSnippet?
```

The subscriberSnippet object contains basic details about the subscriber.

## Methods
### `init(contentDetails:etag:id:kind:snippet:subscriberSnippet:)`

```swift
public init(contentDetails: SubscriptionContentDetails? = nil, etag: String? = nil, id: String? = nil, kind: String? = nil, snippet: SubscriptionSnippet? = nil, subscriberSnippet: SubscriptionSubscriberSnippet? = nil)
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