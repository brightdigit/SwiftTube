**STRUCT**

# `ActivityContentDetails`

```swift
public struct ActivityContentDetails: Model
```

Details about the content of an activity: the video that was shared, the channel that was subscribed to, etc.

## Properties
### `bulletin`

```swift
public var bulletin: ActivityContentDetailsBulletin?
```

The bulletin object contains details about a channel bulletin post. This object is only present if the snippet.type is bulletin.

### `channelItem`

```swift
public var channelItem: ActivityContentDetailsChannelItem?
```

The channelItem object contains details about a resource which was added to a channel. This property is only present if the snippet.type is channelItem.

### `comment`

```swift
public var comment: ActivityContentDetailsComment?
```

The comment object contains information about a resource that received a comment. This property is only present if the snippet.type is comment.

### `favorite`

```swift
public var favorite: ActivityContentDetailsFavorite?
```

The favorite object contains information about a video that was marked as a favorite video. This property is only present if the snippet.type is favorite.

### `like`

```swift
public var like: ActivityContentDetailsLike?
```

The like object contains information about a resource that received a positive (like) rating. This property is only present if the snippet.type is like.

### `playlistItem`

```swift
public var playlistItem: ActivityContentDetailsPlaylistItem?
```

The playlistItem object contains information about a new playlist item. This property is only present if the snippet.type is playlistItem.

### `promotedItem`

```swift
public var promotedItem: ActivityContentDetailsPromotedItem?
```

The promotedItem object contains details about a resource which is being promoted. This property is only present if the snippet.type is promotedItem.

### `recommendation`

```swift
public var recommendation: ActivityContentDetailsRecommendation?
```

The recommendation object contains information about a recommended resource. This property is only present if the snippet.type is recommendation.

### `social`

```swift
public var social: ActivityContentDetailsSocial?
```

The social object contains details about a social network post. This property is only present if the snippet.type is social.

### `subscription`

```swift
public var subscription: ActivityContentDetailsSubscription?
```

The subscription object contains information about a channel that a user subscribed to. This property is only present if the snippet.type is subscription.

### `upload`

```swift
public var upload: ActivityContentDetailsUpload?
```

The upload object contains information about the uploaded video. This property is only present if the snippet.type is upload.

## Methods
### `init(bulletin:channelItem:comment:favorite:like:playlistItem:promotedItem:recommendation:social:subscription:upload:)`

```swift
public init(bulletin: ActivityContentDetailsBulletin? = nil, channelItem: ActivityContentDetailsChannelItem? = nil, comment: ActivityContentDetailsComment? = nil, favorite: ActivityContentDetailsFavorite? = nil, like: ActivityContentDetailsLike? = nil, playlistItem: ActivityContentDetailsPlaylistItem? = nil, promotedItem: ActivityContentDetailsPromotedItem? = nil, recommendation: ActivityContentDetailsRecommendation? = nil, social: ActivityContentDetailsSocial? = nil, subscription: ActivityContentDetailsSubscription? = nil, upload: ActivityContentDetailsUpload? = nil)
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