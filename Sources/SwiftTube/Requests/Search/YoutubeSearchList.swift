import Foundation
import Prch

public extension Search {
  /** Retrieves a list of search resources */
  enum YoutubeSearchList {
    public static let service = APIService<Response>(id: "youtube.search.list", tag: "search", method: "GET", path: "/youtube/v3/search", hasBody: false, securityRequirements: [SecurityRequirement(type: "Oauth2c", scopes: ["https://www.googleapis.com/auth/youtube"]), SecurityRequirement(type: "Oauth2c", scopes: ["https://www.googleapis.com/auth/youtube.force-ssl"]), SecurityRequirement(type: "Oauth2c", scopes: ["https://www.googleapis.com/auth/youtube.readonly"]), SecurityRequirement(type: "Oauth2c", scopes: ["https://www.googleapis.com/auth/youtubepartner"])])

    /** Add a filter on the channel search. */
    public enum ChannelType: String, Codable, Equatable, CaseIterable {
      case channelTypeUnspecified
      case any
      case show
    }

    /** Filter on the livestream status of the videos. */
    public enum EventType: String, Codable, Equatable, CaseIterable {
      case none
      case upcoming
      case live
      case completed
    }

    /** Sort order of the results. */
    public enum Order: String, Codable, Equatable, CaseIterable {
      case searchSortUnspecified
      case date
      case rating
      case viewCount
      case relevance
      case title
      case videoCount
    }

    /** Indicates whether the search results should include restricted content as well as standard content. */
    public enum SafeSearch: String, Codable, Equatable, CaseIterable {
      case safeSearchSettingUnspecified
      case none
      case moderate
      case strict
    }

    /** Filter on the presence of captions on the videos. */
    public enum VideoCaption: String, Codable, Equatable, CaseIterable {
      case videoCaptionUnspecified
      case any
      case closedCaption
      case none
    }

    /** Filter on the definition of the videos. */
    public enum VideoDefinition: String, Codable, Equatable, CaseIterable {
      case any
      case standard
      case high
    }

    /** Filter on 3d videos. */
    public enum VideoDimension: String, Codable, Equatable, CaseIterable {
      case any
      case video2D = "2d"
      case video3D = "3d"
    }

    /** Filter on the duration of the videos. */
    public enum VideoDuration: String, Codable, Equatable, CaseIterable {
      case videoDurationUnspecified
      case any
      case short
      case medium
      case long
    }

    /** Filter on embeddable videos. */
    public enum VideoEmbeddable: String, Codable, Equatable, CaseIterable {
      case videoEmbeddableUnspecified
      case any
      case `true`
    }

    /** Filter on the license of the videos. */
    public enum VideoLicense: String, Codable, Equatable, CaseIterable {
      case any
      case youtube
      case creativeCommon
    }

    /** Filter on syndicated videos. */
    public enum VideoSyndicated: String, Codable, Equatable, CaseIterable {
      case videoSyndicatedUnspecified
      case any
      case `true`
    }

    /** Filter on videos of a specific type. */
    public enum VideoType: String, Codable, Equatable, CaseIterable {
      case videoTypeUnspecified
      case any
      case movie
      case episode
    }

    public final class Request: APIRequest<Response, YouTube.API> {
      public struct Options {
        /** V1 error format. */
        public var dollarXgafv: Xgafv?

        /** OAuth access token. */
        public var accessToken: String?

        /** Data format for response. */
        public var alt: Alt?

        /** JSONP */
        public var callback: String?

        /** Selector specifying which fields to include in a partial response. */
        public var fields: String?

        /** API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. */
        public var key: String?

        /** OAuth 2.0 token for the current user. */
        public var oauthToken: String?

        /** Returns response with indentations and line breaks. */
        public var prettyPrint: Bool?

        /** Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. */
        public var quotaUser: String?

        /** Upload protocol for media (e.g. "raw", "multipart"). */
        public var uploadProtocol: String?

        /** Legacy upload protocol for media (e.g. "media", "multipart"). */
        public var uploadType: String?

        /** The *part* parameter specifies a comma-separated list of one or more search resource properties that the API response will include. Set the parameter value to snippet. */
        public var part: [String]

        /** Filter on resources belonging to this channelId. */
        public var channelId: String?

        /** Add a filter on the channel search. */
        public var channelType: ChannelType?

        /** Filter on the livestream status of the videos. */
        public var eventType: EventType?

        /** Search owned by a content owner. */
        public var forContentOwner: Bool?

        /** Restrict the search to only retrieve videos uploaded using the project id of the authenticated user. */
        public var forDeveloper: Bool?

        /** Search for the private videos of the authenticated user. */
        public var forMine: Bool?

        /** Filter on location of the video */
        public var location: String?

        /** Filter on distance from the location (specified above). */
        public var locationRadius: String?

        /** The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. */
        public var maxResults: Int?

        /** *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner. */
        public var onBehalfOfContentOwner: String?

        /** Sort order of the results. */
        public var order: Order?

        /** The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved. */
        public var pageToken: String?

        /** Filter on resources published after this date. */
        public var publishedAfter: String?

        /** Filter on resources published before this date. */
        public var publishedBefore: String?

        /** Textual search terms to match. */
        public var q: String?

        /** Display the content as seen by viewers in this country. */
        public var regionCode: String?

        /** Search related to a resource. */
        public var relatedToVideoId: String?

        /** Return results relevant to this language. */
        public var relevanceLanguage: String?

        /** Indicates whether the search results should include restricted content as well as standard content. */
        public var safeSearch: SafeSearch?

        /** Restrict results to a particular topic. */
        public var topicId: String?

        /** Restrict results to a particular set of resource types from One Platform. */
        public var type: [String]?

        /** Filter on the presence of captions on the videos. */
        public var videoCaption: VideoCaption?

        /** Filter on videos in a specific category. */
        public var videoCategoryId: String?

        /** Filter on the definition of the videos. */
        public var videoDefinition: VideoDefinition?

        /** Filter on 3d videos. */
        public var videoDimension: VideoDimension?

        /** Filter on the duration of the videos. */
        public var videoDuration: VideoDuration?

        /** Filter on embeddable videos. */
        public var videoEmbeddable: VideoEmbeddable?

        /** Filter on the license of the videos. */
        public var videoLicense: VideoLicense?

        /** Filter on syndicated videos. */
        public var videoSyndicated: VideoSyndicated?

        /** Filter on videos of a specific type. */
        public var videoType: VideoType?

        // swiftlint:disable:next function_body_length
        public init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, part: [String], channelId: String? = nil, channelType: ChannelType? = nil, eventType: EventType? = nil, forContentOwner: Bool? = nil, forDeveloper: Bool? = nil, forMine: Bool? = nil, location: String? = nil, locationRadius: String? = nil, maxResults: Int? = nil, onBehalfOfContentOwner: String? = nil, order: Order? = nil, pageToken: String? = nil, publishedAfter: String? = nil, publishedBefore: String? = nil, q: String? = nil, regionCode: String? = nil, relatedToVideoId: String? = nil, relevanceLanguage: String? = nil, safeSearch: SafeSearch? = nil, topicId: String? = nil, type: [String]? = nil, videoCaption: VideoCaption? = nil, videoCategoryId: String? = nil, videoDefinition: VideoDefinition? = nil, videoDimension: VideoDimension? = nil, videoDuration: VideoDuration? = nil, videoEmbeddable: VideoEmbeddable? = nil, videoLicense: VideoLicense? = nil, videoSyndicated: VideoSyndicated? = nil, videoType: VideoType? = nil) {
          self.dollarXgafv = dollarXgafv
          self.accessToken = accessToken
          self.alt = alt
          self.callback = callback
          self.fields = fields
          self.key = key
          self.oauthToken = oauthToken
          self.prettyPrint = prettyPrint
          self.quotaUser = quotaUser
          self.uploadProtocol = uploadProtocol
          self.uploadType = uploadType
          self.part = part
          self.channelId = channelId
          self.channelType = channelType
          self.eventType = eventType
          self.forContentOwner = forContentOwner
          self.forDeveloper = forDeveloper
          self.forMine = forMine
          self.location = location
          self.locationRadius = locationRadius
          self.maxResults = maxResults
          self.onBehalfOfContentOwner = onBehalfOfContentOwner
          self.order = order
          self.pageToken = pageToken
          self.publishedAfter = publishedAfter
          self.publishedBefore = publishedBefore
          self.q = q
          self.regionCode = regionCode
          self.relatedToVideoId = relatedToVideoId
          self.relevanceLanguage = relevanceLanguage
          self.safeSearch = safeSearch
          self.topicId = topicId
          self.type = type
          self.videoCaption = videoCaption
          self.videoCategoryId = videoCategoryId
          self.videoDefinition = videoDefinition
          self.videoDimension = videoDimension
          self.videoDuration = videoDuration
          self.videoEmbeddable = videoEmbeddable
          self.videoLicense = videoLicense
          self.videoSyndicated = videoSyndicated
          self.videoType = videoType
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: YoutubeSearchList.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, part: [String], channelId: String? = nil, channelType: ChannelType? = nil, eventType: EventType? = nil, forContentOwner: Bool? = nil, forDeveloper: Bool? = nil, forMine: Bool? = nil, location: String? = nil, locationRadius: String? = nil, maxResults: Int? = nil, onBehalfOfContentOwner: String? = nil, order: Order? = nil, pageToken: String? = nil, publishedAfter: String? = nil, publishedBefore: String? = nil, q: String? = nil, regionCode: String? = nil, relatedToVideoId: String? = nil, relevanceLanguage: String? = nil, safeSearch: SafeSearch? = nil, topicId: String? = nil, type: [String]? = nil, videoCaption: VideoCaption? = nil, videoCategoryId: String? = nil, videoDefinition: VideoDefinition? = nil, videoDimension: VideoDimension? = nil, videoDuration: VideoDuration? = nil, videoEmbeddable: VideoEmbeddable? = nil, videoLicense: VideoLicense? = nil, videoSyndicated: VideoSyndicated? = nil, videoType: VideoType? = nil) {
        let options = Options(dollarXgafv: dollarXgafv, accessToken: accessToken, alt: alt, callback: callback, fields: fields, key: key, oauthToken: oauthToken, prettyPrint: prettyPrint, quotaUser: quotaUser, uploadProtocol: uploadProtocol, uploadType: uploadType, part: part, channelId: channelId, channelType: channelType, eventType: eventType, forContentOwner: forContentOwner, forDeveloper: forDeveloper, forMine: forMine, location: location, locationRadius: locationRadius, maxResults: maxResults, onBehalfOfContentOwner: onBehalfOfContentOwner, order: order, pageToken: pageToken, publishedAfter: publishedAfter, publishedBefore: publishedBefore, q: q, regionCode: regionCode, relatedToVideoId: relatedToVideoId, relevanceLanguage: relevanceLanguage, safeSearch: safeSearch, topicId: topicId, type: type, videoCaption: videoCaption, videoCategoryId: videoCategoryId, videoDefinition: videoDefinition, videoDimension: videoDimension, videoDuration: videoDuration, videoEmbeddable: videoEmbeddable, videoLicense: videoLicense, videoSyndicated: videoSyndicated, videoType: videoType)
        self.init(options: options)
      }

      override public var queryParameters: [String: Any] {
        var params: [String: Any] = [:]
        if let dollarXgafv = options.dollarXgafv?.encode() {
          params["$.xgafv"] = dollarXgafv
        }
        if let accessToken = options.accessToken {
          params["access_token"] = accessToken
        }
        if let alt = options.alt?.encode() {
          params["alt"] = alt
        }
        if let callback = options.callback {
          params["callback"] = callback
        }
        if let fields = options.fields {
          params["fields"] = fields
        }
        if let key = options.key {
          params["key"] = key
        }
        if let oauthToken = options.oauthToken {
          params["oauth_token"] = oauthToken
        }
        if let prettyPrint = options.prettyPrint {
          params["prettyPrint"] = prettyPrint
        }
        if let quotaUser = options.quotaUser {
          params["quotaUser"] = quotaUser
        }
        if let uploadProtocol = options.uploadProtocol {
          params["upload_protocol"] = uploadProtocol
        }
        if let uploadType = options.uploadType {
          params["uploadType"] = uploadType
        }
        params["part"] = options.part.joined(separator: ",")
        if let channelId = options.channelId {
          params["channelId"] = channelId
        }
        if let channelType = options.channelType?.encode() {
          params["channelType"] = channelType
        }
        if let eventType = options.eventType?.encode() {
          params["eventType"] = eventType
        }
        if let forContentOwner = options.forContentOwner {
          params["forContentOwner"] = forContentOwner
        }
        if let forDeveloper = options.forDeveloper {
          params["forDeveloper"] = forDeveloper
        }
        if let forMine = options.forMine {
          params["forMine"] = forMine
        }
        if let location = options.location {
          params["location"] = location
        }
        if let locationRadius = options.locationRadius {
          params["locationRadius"] = locationRadius
        }
        if let maxResults = options.maxResults {
          params["maxResults"] = maxResults
        }
        if let onBehalfOfContentOwner = options.onBehalfOfContentOwner {
          params["onBehalfOfContentOwner"] = onBehalfOfContentOwner
        }
        if let order = options.order?.encode() {
          params["order"] = order
        }
        if let pageToken = options.pageToken {
          params["pageToken"] = pageToken
        }
        if let publishedAfter = options.publishedAfter {
          params["publishedAfter"] = publishedAfter
        }
        if let publishedBefore = options.publishedBefore {
          params["publishedBefore"] = publishedBefore
        }
        if let q = options.q {
          params["q"] = q
        }
        if let regionCode = options.regionCode {
          params["regionCode"] = regionCode
        }
        if let relatedToVideoId = options.relatedToVideoId {
          params["relatedToVideoId"] = relatedToVideoId
        }
        if let relevanceLanguage = options.relevanceLanguage {
          params["relevanceLanguage"] = relevanceLanguage
        }
        if let safeSearch = options.safeSearch?.encode() {
          params["safeSearch"] = safeSearch
        }
        if let topicId = options.topicId {
          params["topicId"] = topicId
        }
        if let type = options.type?.joined(separator: ",") {
          params["type"] = type
        }
        if let videoCaption = options.videoCaption?.encode() {
          params["videoCaption"] = videoCaption
        }
        if let videoCategoryId = options.videoCategoryId {
          params["videoCategoryId"] = videoCategoryId
        }
        if let videoDefinition = options.videoDefinition?.encode() {
          params["videoDefinition"] = videoDefinition
        }
        if let videoDimension = options.videoDimension?.encode() {
          params["videoDimension"] = videoDimension
        }
        if let videoDuration = options.videoDuration?.encode() {
          params["videoDuration"] = videoDuration
        }
        if let videoEmbeddable = options.videoEmbeddable?.encode() {
          params["videoEmbeddable"] = videoEmbeddable
        }
        if let videoLicense = options.videoLicense?.encode() {
          params["videoLicense"] = videoLicense
        }
        if let videoSyndicated = options.videoSyndicated?.encode() {
          params["videoSyndicated"] = videoSyndicated
        }
        if let videoType = options.videoType?.encode() {
          params["videoType"] = videoType
        }
        return params
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      public typealias FailureType = Never
      public typealias APIType = YouTube.API
      public typealias SuccessType = SearchListResponse

      /** Successful response */
      case status200(SearchListResponse)

      public var success: SearchListResponse? {
        switch self {
        case let .status200(response): return response
        }
      }

      public var response: Any {
        switch self {
        case let .status200(response): return response
        }
      }

      public var statusCode: Int {
        switch self {
        case .status200: return 200
        }
      }

      public var successful: Bool {
        switch self {
        case .status200: return true
        }
      }

      public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
        switch statusCode {
        case 200: self = try .status200(decoder.decode(SearchListResponse.self, from: data))
        default: throw APIClientError.unexpectedStatusCode(statusCode: statusCode, data: data)
        }
      }

      public var description: String {
        "\(statusCode) \(successful ? "success" : "failure")"
      }

      public var debugDescription: String {
        var string = description
        let responseString = "\(response)"
        if responseString != "()" {
          string += "\n\(responseString)"
        }
        return string
      }
    }
  }
}
