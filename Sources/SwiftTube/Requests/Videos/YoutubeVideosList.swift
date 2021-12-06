import Foundation
import Prch

public extension Videos {
  /** Retrieves a list of resources, possibly filtered. */
  enum YoutubeVideosList {
    public static let service = APIService<Response>(id: "youtube.videos.list", tag: "videos", method: "GET", path: "/youtube/v3/videos", hasBody: false, securityRequirements: [SecurityRequirement(type: "Oauth2c", scopes: ["https://www.googleapis.com/auth/youtube"]), SecurityRequirement(type: "Oauth2", scopes: ["https://www.googleapis.com/auth/youtube.force-ssl"]), SecurityRequirement(type: "Oauth2", scopes: ["https://www.googleapis.com/auth/youtube.readonly"]), SecurityRequirement(type: "Oauth2c", scopes: ["https://www.googleapis.com/auth/youtubepartner"])])

    /** Return the videos that are in the specified chart. */
    public enum Chart: String, Codable, Equatable, CaseIterable {
      case chartUnspecified
      case mostPopular
    }

    /** Return videos liked/disliked by the authenticated user. Does not support RateType.RATED_TYPE_NONE. */
    public enum MyRating: String, Codable, Equatable, CaseIterable {
      case none
      case like
      case dislike
    }

    public final class Request: APIRequest<Response> {
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

        /** The *part* parameter specifies a comma-separated list of one or more video resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a video resource, the snippet property contains the channelId, title, description, tags, and categoryId properties. As such, if you set *part=snippet*, the API response will contain all of those properties. */
        public var part: [String]

        /** Return the videos that are in the specified chart. */
        public var chart: Chart?

        /** Stands for "host language". Specifies the localization language of the metadata to be filled into snippet.localized. The field is filled with the default metadata if there is no localization in the specified language. The parameter value must be a language code included in the list returned by the i18nLanguages.list method (e.g. en_US, es_MX). */
        public var hl: String?

        /** Return videos with the given ids. */
        public var id: [String]?

        public var locale: String?

        public var maxHeight: Int?

        /** The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. *Note:* This parameter is supported for use in conjunction with the myRating and chart parameters, but it is not supported for use in conjunction with the id parameter. */
        public var maxResults: Int?

        /** Return the player with maximum height specified in */
        public var maxWidth: Int?

        /** Return videos liked/disliked by the authenticated user. Does not support RateType.RATED_TYPE_NONE. */
        public var myRating: MyRating?

        /** *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner. */
        public var onBehalfOfContentOwner: String?

        /** The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved. *Note:* This parameter is supported for use in conjunction with the myRating and chart parameters, but it is not supported for use in conjunction with the id parameter. */
        public var pageToken: String?

        /** Use a chart that is specific to the specified region */
        public var regionCode: String?

        /** Use chart that is specific to the specified video category */
        public var videoCategoryId: String?

        public init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, part: [String], chart: Chart? = nil, hl: String? = nil, id: [String]? = nil, locale: String? = nil, maxHeight: Int? = nil, maxResults: Int? = nil, maxWidth: Int? = nil, myRating: MyRating? = nil, onBehalfOfContentOwner: String? = nil, pageToken: String? = nil, regionCode: String? = nil, videoCategoryId: String? = nil) {
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
          self.chart = chart
          self.hl = hl
          self.id = id
          self.locale = locale
          self.maxHeight = maxHeight
          self.maxResults = maxResults
          self.maxWidth = maxWidth
          self.myRating = myRating
          self.onBehalfOfContentOwner = onBehalfOfContentOwner
          self.pageToken = pageToken
          self.regionCode = regionCode
          self.videoCategoryId = videoCategoryId
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: YoutubeVideosList.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, part: [String], chart: Chart? = nil, hl: String? = nil, id: [String]? = nil, locale: String? = nil, maxHeight: Int? = nil, maxResults: Int? = nil, maxWidth: Int? = nil, myRating: MyRating? = nil, onBehalfOfContentOwner: String? = nil, pageToken: String? = nil, regionCode: String? = nil, videoCategoryId: String? = nil) {
        let options = Options(dollarXgafv: dollarXgafv, accessToken: accessToken, alt: alt, callback: callback, fields: fields, key: key, oauthToken: oauthToken, prettyPrint: prettyPrint, quotaUser: quotaUser, uploadProtocol: uploadProtocol, uploadType: uploadType, part: part, chart: chart, hl: hl, id: id, locale: locale, maxHeight: maxHeight, maxResults: maxResults, maxWidth: maxWidth, myRating: myRating, onBehalfOfContentOwner: onBehalfOfContentOwner, pageToken: pageToken, regionCode: regionCode, videoCategoryId: videoCategoryId)
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
        if let chart = options.chart?.encode() {
          params["chart"] = chart
        }
        if let hl = options.hl {
          params["hl"] = hl
        }
        if let id = options.id?.joined(separator: ",") {
          params["id"] = id
        }
        if let locale = options.locale {
          params["locale"] = locale
        }
        if let maxHeight = options.maxHeight {
          params["maxHeight"] = maxHeight
        }
        if let maxResults = options.maxResults {
          params["maxResults"] = maxResults
        }
        if let maxWidth = options.maxWidth {
          params["maxWidth"] = maxWidth
        }
        if let myRating = options.myRating?.encode() {
          params["myRating"] = myRating
        }
        if let onBehalfOfContentOwner = options.onBehalfOfContentOwner {
          params["onBehalfOfContentOwner"] = onBehalfOfContentOwner
        }
        if let pageToken = options.pageToken {
          params["pageToken"] = pageToken
        }
        if let regionCode = options.regionCode {
          params["regionCode"] = regionCode
        }
        if let videoCategoryId = options.videoCategoryId {
          params["videoCategoryId"] = videoCategoryId
        }
        return params
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      public typealias SuccessType = VideoListResponse

      /** Successful response */
      case status200(VideoListResponse)

      public var success: VideoListResponse? {
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
        case 200: self = try .status200(decoder.decode(VideoListResponse.self, from: data))
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
