# API

This is an api generated from a OpenAPI 3.0 spec with [SwagGen](https://github.com/yonaskolb/SwagGen)

## Operation

Each operation lives under the `API` namespace and within an optional tag: `API(.tagName).operationId`. If an operation doesn't have an operationId one will be generated from the path and method.

Each operation has a nested `Request` and a `Response`, as well as a static `service` property

#### Service

This is the struct that contains the static information about an operation including it's id, tag, method, pre-modified path, and authorization requirements. It has a generic `ResponseType` type which maps to the `Response` type.
You shouldn't really need to interact with this service type.

#### Request

Each request is a subclass of `APIRequest` and has an `init` with a body param if it has a body, and a `options` struct for other url and path parameters. There is also a convenience init for passing parameters directly.
The `options` and `body` structs are both mutable so they can be modified before actually sending the request.

#### Response

The response is an enum of all the possible responses the request can return. it also contains getters for the `statusCode`, whether it was `successful`, and the actual decoded optional `success` response. If the operation only has one type of failure type there is also an optional `failure` type.

## Model
Models that are sent and returned from the API are mutable classes. Each model is `Equatable` and `Codable`.

`Required` properties are non optional and non-required are optional

All properties can be passed into the initializer, with `required` properties being mandatory.

If a model has `additionalProperties` it will have a subscript to access these by string

## APIClient
The `APIClient` is used to encode, authorize, send, monitor, and decode the requests. There is a `APIClient.default` that uses the default `baseURL` otherwise a custom one can be initialized:

```swift
public init(baseURL: String, sessionManager: SessionManager = .default, defaultHeaders: [String: String] = [:], behaviours: [RequestBehaviour] = [])
```

#### APIClient properties

- `baseURL`: The base url that every request `path` will be appended to
- `behaviours`: A list of [Request Behaviours](#requestbehaviour) to add to every request
- `sessionManager`: An `Alamofire.SessionManager` that can be customized
- `defaultHeaders`: Headers that will be applied to every request
- `decodingQueue`: The `DispatchQueue` to decode responses on

#### Making a request
To make a request first initialize a [Request](#request) and then pass it to `makeRequest`. The `complete` closure will be called with an `APIResponse`

```swift
func makeRequest<T>(_ request: APIRequest<T>, behaviours: [RequestBehaviour] = [], queue: DispatchQueue = DispatchQueue.main, complete: @escaping (APIResponse<T>) -> Void) -> Request? {
```

Example request (that is not neccessarily in this api):

```swift

let getUserRequest = API.User.GetUser.Request(id: 123)
let apiClient = APIClient.default

apiClient.makeRequest(getUserRequest) { apiResponse in
    switch apiResponse {
        case .result(let apiResponseValue):
        	if let user = apiResponseValue.success {
        		print("GetUser returned user \(user)")
        	} else {
        		print("GetUser returned \(apiResponseValue)")
        	}
        case .error(let apiError):
        	print("GetUser failed with \(apiError)")
    }
}
```

Each [Request](#request) also has a `makeRequest` convenience function that uses `API.shared`.

#### APIResponse
The `APIResponse` that gets passed to the completion closure contains the following properties:

- `request`: The original request
- `result`: A `Result` type either containing an `APIClientError` or the [Response](#response) of the request
- `urlRequest`: The `URLRequest` used to send the request
- `urlResponse`: The `HTTPURLResponse` that was returned by the request
- `data`: The `Data` returned by the request.
- `timeline`: The `Alamofire.Timeline` of the request which contains timing information.

#### Encoding and Decoding
Only JSON requests and responses are supported. These are encoded and decoded by `JSONEncoder` and `JSONDecoder` respectively, using Swift's `Codable` apis.
There are some options to control how invalid JSON is handled when decoding and these are available as static properties on `API`:

- `safeOptionalDecoding`: Whether to discard any errors when decoding optional properties. Defaults to `true`.
- `safeArrayDecoding`: Whether to remove invalid elements instead of throwing when decoding arrays. Defaults to `true`.

Dates are encoded and decoded differently according to the swagger date format. They use different `DateFormatter`'s that you can set.
- `date-time`
    - `DateTime.dateEncodingFormatter`: defaults to `yyyy-MM-dd'T'HH:mm:ss.Z`
    - `DateTime.dateDecodingFormatters`: an array of date formatters. The first one to decode successfully will be used
- `date`
    - `DateDay.dateFormatter`: defaults to `yyyy-MM-dd`

#### APIClientError
This is error enum that `APIResponse.result` may contain:

```swift
public enum APIClientError: Error {
    case unexpectedStatusCode(statusCode: Int, data: Data)
    case decodingError(DecodingError)
    case requestEncodingError(String)
    case validationError(String)
    case networkError(Error)
    case unknownError(Error)
}
```

#### RequestBehaviour
Request behaviours are used to modify, authorize, monitor or respond to requests. They can be added to the `APIClient.behaviours` for all requests, or they can passed into `makeRequest` for just that single request.

`RequestBehaviour` is a protocol you can conform to with each function being optional. As the behaviours must work across multiple different request types, they only have access to a typed erased `AnyRequest`.

```swift
public protocol RequestBehaviour {

    /// runs first and allows the requests to be modified. If modifying asynchronously use validate
    func modifyRequest(request: AnyRequest, urlRequest: URLRequest) -> URLRequest

    /// validates and modifies the request. complete must be called with either .success or .fail
    func validate(request: AnyRequest, urlRequest: URLRequest, complete: @escaping (RequestValidationResult) -> Void)

    /// called before request is sent
    func beforeSend(request: AnyRequest)

    /// called when request successfuly returns a 200 range response
    func onSuccess(request: AnyRequest, result: Any)

    /// called when request fails with an error. This will not be called if the request returns a known response even if the a status code is out of the 200 range
    func onFailure(request: AnyRequest, error: APIClientError)

    /// called if the request recieves a network response. This is not called if request fails validation or encoding
    func onResponse(request: AnyRequest, response: AnyResponse)
}
```

### Authorization
Each request has an optional `securityRequirement`. You can create a `RequestBehaviour` that checks this requirement and adds some form of authorization (usually via headers) in `validate` or `modifyRequest`. An alternative way is to set the `APIClient.defaultHeaders` which applies to all requests.

#### Reactive and Promises
To add support for a specific asynchronous library, just add an extension on `APIClient` and add a function that wraps the `makeRequest` function and converts from a closure based syntax to returning the object of choice (stream, future...ect)

## Models

- **AbuseReport**
- **AbuseType**
- **AccessPolicy**
- **Activity**
- **ActivityContentDetails**
- **ActivityContentDetailsBulletin**
- **ActivityContentDetailsChannelItem**
- **ActivityContentDetailsComment**
- **ActivityContentDetailsFavorite**
- **ActivityContentDetailsLike**
- **ActivityContentDetailsPlaylistItem**
- **ActivityContentDetailsPromotedItem**
- **ActivityContentDetailsRecommendation**
- **ActivityContentDetailsSocial**
- **ActivityContentDetailsSubscription**
- **ActivityContentDetailsUpload**
- **ActivityListResponse**
- **ActivitySnippet**
- **Caption**
- **CaptionListResponse**
- **CaptionSnippet**
- **CdnSettings**
- **Channel**
- **ChannelAuditDetails**
- **ChannelBannerResource**
- **ChannelBrandingSettings**
- **ChannelContentDetails**
- **ChannelContentOwnerDetails**
- **ChannelConversionPing**
- **ChannelConversionPings**
- **ChannelListResponse**
- **ChannelLocalization**
- **ChannelProfileDetails**
- **ChannelSection**
- **ChannelSectionContentDetails**
- **ChannelSectionListResponse**
- **ChannelSectionLocalization**
- **ChannelSectionSnippet**
- **ChannelSectionTargeting**
- **ChannelSettings**
- **ChannelSnippet**
- **ChannelStatistics**
- **ChannelStatus**
- **ChannelToStoreLinkDetails**
- **ChannelTopicDetails**
- **Comment**
- **CommentListResponse**
- **CommentSnippet**
- **CommentSnippetAuthorChannelId**
- **CommentThread**
- **CommentThreadListResponse**
- **CommentThreadReplies**
- **CommentThreadSnippet**
- **ContentRating**
- **Entity**
- **GeoPoint**
- **I18nLanguage**
- **I18nLanguageListResponse**
- **I18nLanguageSnippet**
- **I18nRegion**
- **I18nRegionListResponse**
- **I18nRegionSnippet**
- **ImageSettings**
- **IngestionInfo**
- **InvideoBranding**
- **InvideoPosition**
- **InvideoTiming**
- **LanguageTag**
- **LevelDetails**
- **LiveBroadcast**
- **LiveBroadcastContentDetails**
- **LiveBroadcastListResponse**
- **LiveBroadcastSnippet**
- **LiveBroadcastStatistics**
- **LiveBroadcastStatus**
- **LiveChatBan**
- **LiveChatBanSnippet**
- **LiveChatFanFundingEventDetails**
- **LiveChatMemberMilestoneChatDetails**
- **LiveChatMessage**
- **LiveChatMessageAuthorDetails**
- **LiveChatMessageDeletedDetails**
- **LiveChatMessageListResponse**
- **LiveChatMessageRetractedDetails**
- **LiveChatMessageSnippet**
- **LiveChatModerator**
- **LiveChatModeratorListResponse**
- **LiveChatModeratorSnippet**
- **LiveChatNewSponsorDetails**
- **LiveChatSuperChatDetails**
- **LiveChatSuperStickerDetails**
- **LiveChatTextMessageDetails**
- **LiveChatUserBannedMessageDetails**
- **LiveStream**
- **LiveStreamConfigurationIssue**
- **LiveStreamContentDetails**
- **LiveStreamHealthStatus**
- **LiveStreamListResponse**
- **LiveStreamSnippet**
- **LiveStreamStatus**
- **LocalizedProperty**
- **LocalizedString**
- **Member**
- **MemberListResponse**
- **MemberSnippet**
- **MembershipsDetails**
- **MembershipsDuration**
- **MembershipsDurationAtLevel**
- **MembershipsLevel**
- **MembershipsLevelListResponse**
- **MembershipsLevelSnippet**
- **MonitorStreamInfo**
- **PageInfo**
- **Playlist**
- **PlaylistContentDetails**
- **PlaylistItem**
- **PlaylistItemContentDetails**
- **PlaylistItemListResponse**
- **PlaylistItemSnippet**
- **PlaylistItemStatus**
- **PlaylistListResponse**
- **PlaylistLocalization**
- **PlaylistPlayer**
- **PlaylistSnippet**
- **PlaylistStatus**
- **PropertyValue**
- **RelatedEntity**
- **ResourceId**
- **SearchListResponse**
- **SearchResult**
- **SearchResultSnippet**
- **Subscription**
- **SubscriptionContentDetails**
- **SubscriptionListResponse**
- **SubscriptionSnippet**
- **SubscriptionSubscriberSnippet**
- **SuperChatEvent**
- **SuperChatEventListResponse**
- **SuperChatEventSnippet**
- **SuperStickerMetadata**
- **TestItem**
- **TestItemTestItemSnippet**
- **ThirdPartyLink**
- **ThirdPartyLinkSnippet**
- **ThirdPartyLinkStatus**
- **Thumbnail**
- **ThumbnailDetails**
- **ThumbnailSetResponse**
- **TokenPagination**
- **Video**
- **VideoAbuseReport**
- **VideoAbuseReportReason**
- **VideoAbuseReportReasonListResponse**
- **VideoAbuseReportReasonSnippet**
- **VideoAbuseReportSecondaryReason**
- **VideoAgeGating**
- **VideoCategory**
- **VideoCategoryListResponse**
- **VideoCategorySnippet**
- **VideoContentDetails**
- **VideoContentDetailsRegionRestriction**
- **VideoFileDetails**
- **VideoFileDetailsAudioStream**
- **VideoFileDetailsVideoStream**
- **VideoGetRatingResponse**
- **VideoListResponse**
- **VideoLiveStreamingDetails**
- **VideoLocalization**
- **VideoMonetizationDetails**
- **VideoPlayer**
- **VideoProcessingDetails**
- **VideoProcessingDetailsProcessingProgress**
- **VideoProjectDetails**
- **VideoRating**
- **VideoRecordingDetails**
- **VideoSnippet**
- **VideoStatistics**
- **VideoStatus**
- **VideoSuggestions**
- **VideoSuggestionsTagSuggestion**
- **VideoTopicDetails**
- **WatchSettings**

## Requests

- **API.AbuseReports**
	- **YoutubeAbuseReportsInsert**: POST `/youtube/v3/abusereports`
- **API.Activities**
	- **YoutubeActivitiesList**: GET `/youtube/v3/activities`
- **API.Captions**
	- **YoutubeCaptionsDelete**: DELETE `/youtube/v3/captions`
	- **YoutubeCaptionsDownload**: GET `/youtube/v3/captions/{id}`
	- **YoutubeCaptionsInsert**: POST `/youtube/v3/captions`
	- **YoutubeCaptionsList**: GET `/youtube/v3/captions`
	- **YoutubeCaptionsUpdate**: PUT `/youtube/v3/captions`
- **API.ChannelBanners**
	- **YoutubeChannelBannersInsert**: POST `/youtube/v3/channelbanners/insert`
- **API.Channels**
	- **YoutubeChannelsList**: GET `/youtube/v3/channels`
	- **YoutubeChannelsUpdate**: PUT `/youtube/v3/channels`
- **API.ChannelSections**
	- **YoutubeChannelSectionsDelete**: DELETE `/youtube/v3/channelsections`
	- **YoutubeChannelSectionsInsert**: POST `/youtube/v3/channelsections`
	- **YoutubeChannelSectionsList**: GET `/youtube/v3/channelsections`
	- **YoutubeChannelSectionsUpdate**: PUT `/youtube/v3/channelsections`
- **API.Comments**
	- **YoutubeCommentsDelete**: DELETE `/youtube/v3/comments`
	- **YoutubeCommentsInsert**: POST `/youtube/v3/comments`
	- **YoutubeCommentsList**: GET `/youtube/v3/comments`
	- **YoutubeCommentsMarkAsSpam**: POST `/youtube/v3/comments/markasspam`
	- **YoutubeCommentsSetModerationStatus**: POST `/youtube/v3/comments/setmoderationstatus`
	- **YoutubeCommentsUpdate**: PUT `/youtube/v3/comments`
- **API.CommentThreads**
	- **YoutubeCommentThreadsInsert**: POST `/youtube/v3/commentthreads`
	- **YoutubeCommentThreadsList**: GET `/youtube/v3/commentthreads`
- **API.I18nLanguages**
	- **YoutubeI18nLanguagesList**: GET `/youtube/v3/i18nlanguages`
- **API.I18nRegions**
	- **YoutubeI18nRegionsList**: GET `/youtube/v3/i18nregions`
- **API.LiveBroadcasts**
	- **YoutubeLiveBroadcastsBind**: POST `/youtube/v3/livebroadcasts/bind`
	- **YoutubeLiveBroadcastsDelete**: DELETE `/youtube/v3/livebroadcasts`
	- **YoutubeLiveBroadcastsInsert**: POST `/youtube/v3/livebroadcasts`
	- **YoutubeLiveBroadcastsList**: GET `/youtube/v3/livebroadcasts`
	- **YoutubeLiveBroadcastsTransition**: POST `/youtube/v3/livebroadcasts/transition`
	- **YoutubeLiveBroadcastsUpdate**: PUT `/youtube/v3/livebroadcasts`
- **API.LiveChatBans**
	- **YoutubeLiveChatBansDelete**: DELETE `/youtube/v3/livechat/bans`
	- **YoutubeLiveChatBansInsert**: POST `/youtube/v3/livechat/bans`
- **API.LiveChatMessages**
	- **YoutubeLiveChatMessagesDelete**: DELETE `/youtube/v3/livechat/messages`
	- **YoutubeLiveChatMessagesInsert**: POST `/youtube/v3/livechat/messages`
	- **YoutubeLiveChatMessagesList**: GET `/youtube/v3/livechat/messages`
- **API.LiveChatModerators**
	- **YoutubeLiveChatModeratorsDelete**: DELETE `/youtube/v3/livechat/moderators`
	- **YoutubeLiveChatModeratorsInsert**: POST `/youtube/v3/livechat/moderators`
	- **YoutubeLiveChatModeratorsList**: GET `/youtube/v3/livechat/moderators`
- **API.LiveStreams**
	- **YoutubeLiveStreamsDelete**: DELETE `/youtube/v3/livestreams`
	- **YoutubeLiveStreamsInsert**: POST `/youtube/v3/livestreams`
	- **YoutubeLiveStreamsList**: GET `/youtube/v3/livestreams`
	- **YoutubeLiveStreamsUpdate**: PUT `/youtube/v3/livestreams`
- **API.Members**
	- **YoutubeMembersList**: GET `/youtube/v3/members`
- **API.MembershipsLevels**
	- **YoutubeMembershipsLevelsList**: GET `/youtube/v3/membershipslevels`
- **API.PlaylistItems**
	- **YoutubePlaylistItemsDelete**: DELETE `/youtube/v3/playlistitems`
	- **YoutubePlaylistItemsInsert**: POST `/youtube/v3/playlistitems`
	- **YoutubePlaylistItemsList**: GET `/youtube/v3/playlistitems`
	- **YoutubePlaylistItemsUpdate**: PUT `/youtube/v3/playlistitems`
- **API.Playlists**
	- **YoutubePlaylistsDelete**: DELETE `/youtube/v3/playlists`
	- **YoutubePlaylistsInsert**: POST `/youtube/v3/playlists`
	- **YoutubePlaylistsList**: GET `/youtube/v3/playlists`
	- **YoutubePlaylistsUpdate**: PUT `/youtube/v3/playlists`
- **API.Search**
	- **YoutubeSearchList**: GET `/youtube/v3/search`
- **API.Subscriptions**
	- **YoutubeSubscriptionsDelete**: DELETE `/youtube/v3/subscriptions`
	- **YoutubeSubscriptionsInsert**: POST `/youtube/v3/subscriptions`
	- **YoutubeSubscriptionsList**: GET `/youtube/v3/subscriptions`
- **API.SuperChatEvents**
	- **YoutubeSuperChatEventsList**: GET `/youtube/v3/superchatevents`
- **API.Tests**
	- **YoutubeTestsInsert**: POST `/youtube/v3/tests`
- **API.ThirdPartyLinks**
	- **YoutubeThirdPartyLinksDelete**: DELETE `/youtube/v3/thirdpartylinks`
	- **YoutubeThirdPartyLinksInsert**: POST `/youtube/v3/thirdpartylinks`
	- **YoutubeThirdPartyLinksList**: GET `/youtube/v3/thirdpartylinks`
	- **YoutubeThirdPartyLinksUpdate**: PUT `/youtube/v3/thirdpartylinks`
- **API.Thumbnails**
	- **YoutubeThumbnailsSet**: POST `/youtube/v3/thumbnails/set`
- **API.VideoAbuseReportReasons**
	- **YoutubeVideoAbuseReportReasonsList**: GET `/youtube/v3/videoabusereportreasons`
- **API.VideoCategories**
	- **YoutubeVideoCategoriesList**: GET `/youtube/v3/videocategories`
- **API.Videos**
	- **YoutubeVideosDelete**: DELETE `/youtube/v3/videos`
	- **YoutubeVideosGetRating**: GET `/youtube/v3/videos/getrating`
	- **YoutubeVideosInsert**: POST `/youtube/v3/videos`
	- **YoutubeVideosList**: GET `/youtube/v3/videos`
	- **YoutubeVideosRate**: POST `/youtube/v3/videos/rate`
	- **YoutubeVideosReportAbuse**: POST `/youtube/v3/videos/reportabuse`
	- **YoutubeVideosUpdate**: PUT `/youtube/v3/videos`
- **API.Watermarks**
	- **YoutubeWatermarksSet**: POST `/youtube/v3/watermarks/set`
	- **YoutubeWatermarksUnset**: POST `/youtube/v3/watermarks/unset`
- **API.Youtube**
	- **YoutubeYoutubeV3UpdateCommentThreads**: PUT `/youtube/v3/commentthreads`
