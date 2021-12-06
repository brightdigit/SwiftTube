**CLASS**

# `YoutubeSearchList.Request`

```swift
public final class Request: APIRequest<Response>
```

## Properties
### `options`

```swift
public var options: Options
```

### `queryParameters`

```swift
override public var queryParameters: [String: Any]
```

## Methods
### `init(options:)`

```swift
public init(options: Options)
```

### `init(dollarXgafv:accessToken:alt:callback:fields:key:oauthToken:prettyPrint:quotaUser:uploadProtocol:uploadType:part:channelId:channelType:eventType:forContentOwner:forDeveloper:forMine:location:locationRadius:maxResults:onBehalfOfContentOwner:order:pageToken:publishedAfter:publishedBefore:q:regionCode:relatedToVideoId:relevanceLanguage:safeSearch:topicId:type:videoCaption:videoCategoryId:videoDefinition:videoDimension:videoDuration:videoEmbeddable:videoLicense:videoSyndicated:videoType:)`

```swift
public convenience init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, part: [String], channelId: String? = nil, channelType: ChannelType? = nil, eventType: EventType? = nil, forContentOwner: Bool? = nil, forDeveloper: Bool? = nil, forMine: Bool? = nil, location: String? = nil, locationRadius: String? = nil, maxResults: Int? = nil, onBehalfOfContentOwner: String? = nil, order: Order? = nil, pageToken: String? = nil, publishedAfter: String? = nil, publishedBefore: String? = nil, q: String? = nil, regionCode: String? = nil, relatedToVideoId: String? = nil, relevanceLanguage: String? = nil, safeSearch: SafeSearch? = nil, topicId: String? = nil, type: [String]? = nil, videoCaption: VideoCaption? = nil, videoCategoryId: String? = nil, videoDefinition: VideoDefinition? = nil, videoDimension: VideoDimension? = nil, videoDuration: VideoDuration? = nil, videoEmbeddable: VideoEmbeddable? = nil, videoLicense: VideoLicense? = nil, videoSyndicated: VideoSyndicated? = nil, videoType: VideoType? = nil)
```

convenience initialiser so an Option doesn't have to be created
