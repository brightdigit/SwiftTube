**STRUCT**

# `CommentSnippet`

```swift
public struct CommentSnippet: Model
```

Basic details about a comment, such as its author and text.

## Properties
### `authorChannelId`

```swift
public var authorChannelId: CommentSnippetAuthorChannelId?
```

### `authorChannelUrl`

```swift
public var authorChannelUrl: String?
```

Link to the author's YouTube channel, if any.

### `authorDisplayName`

```swift
public var authorDisplayName: String?
```

The name of the user who posted the comment.

### `authorProfileImageUrl`

```swift
public var authorProfileImageUrl: String?
```

The URL for the avatar of the user who posted the comment.

### `canRate`

```swift
public var canRate: Bool?
```

Whether the current viewer can rate this comment.

### `channelId`

```swift
public var channelId: String?
```

The id of the corresponding YouTube channel. In case of a channel comment this is the channel the comment refers to. In case of a video comment it's the video's channel.

### `likeCount`

```swift
public var likeCount: Int?
```

The total number of likes this comment has received.

### `moderationStatus`

```swift
public var moderationStatus: ModerationStatus?
```

The comment's moderation status. Will not be set if the comments were requested through the id filter.

### `parentId`

```swift
public var parentId: String?
```

The unique id of the parent comment, only set for replies.

### `publishedAt`

```swift
public var publishedAt: DateTime?
```

The date and time when the comment was originally published.

### `textDisplay`

```swift
public var textDisplay: String?
```

The comment's text. The format is either plain text or HTML dependent on what has been requested. Even the plain text representation may differ from the text originally posted in that it may replace video links with video titles etc.

### `textOriginal`

```swift
public var textOriginal: String?
```

The comment's original raw text as initially posted or last updated. The original text will only be returned if it is accessible to the viewer, which is only guaranteed if the viewer is the comment's author.

### `updatedAt`

```swift
public var updatedAt: DateTime?
```

The date and time when the comment was last updated.

### `videoId`

```swift
public var videoId: String?
```

The ID of the video the comment refers to, if any.

### `viewerRating`

```swift
public var viewerRating: ViewerRating?
```

The rating the viewer has given to this comment. For the time being this will never return RATE_TYPE_DISLIKE and instead return RATE_TYPE_NONE. This may change in the future.

## Methods
### `init(authorChannelId:authorChannelUrl:authorDisplayName:authorProfileImageUrl:canRate:channelId:likeCount:moderationStatus:parentId:publishedAt:textDisplay:textOriginal:updatedAt:videoId:viewerRating:)`

```swift
public init(authorChannelId: CommentSnippetAuthorChannelId? = nil, authorChannelUrl: String? = nil, authorDisplayName: String? = nil, authorProfileImageUrl: String? = nil, canRate: Bool? = nil, channelId: String? = nil, likeCount: Int? = nil, moderationStatus: ModerationStatus? = nil, parentId: String? = nil, publishedAt: DateTime? = nil, textDisplay: String? = nil, textOriginal: String? = nil, updatedAt: DateTime? = nil, videoId: String? = nil, viewerRating: ViewerRating? = nil)
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