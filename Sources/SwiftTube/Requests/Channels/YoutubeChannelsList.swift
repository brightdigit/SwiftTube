import Foundation
import Prch

public extension Channels {
  /** Retrieves a list of resources, possibly filtered. */
  enum YoutubeChannelsList {
    public static let service = Service<Response>(id: "youtube.channels.list", tag: "channels", method: "GET", path: "/youtube/v3/channels", hasBody: false, securityRequirements: [SecurityRequirement(type: "Oauth2", scopes: ["https://www.googleapis.com/auth/youtube"]), SecurityRequirement(type: "Oauth2", scopes: ["https://www.googleapis.com/auth/youtube.force-ssl"]), SecurityRequirement(type: "Oauth2", scopes: ["https://www.googleapis.com/auth/youtube.readonly"]), SecurityRequirement(type: "Oauth2", scopes: ["https://www.googleapis.com/auth/youtubepartner"]), SecurityRequirement(type: "Oauth2", scopes: ["https://www.googleapis.com/auth/youtubepartner-channel-audit"])])

    public struct Request: ServiceRequest {
      public typealias ResponseType = Response

      public var service: Service<Response> {
        YoutubeChannelsList.service
      }

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

        /** The *part* parameter specifies a comma-separated list of one or more channel resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a channel resource, the contentDetails property contains other properties, such as the uploads properties. As such, if you set *part=contentDetails*, the API response will also contain all of those nested properties. */
        public var part: [String]

        /** Return the channels within the specified guide category ID. */
        public var categoryId: String?

        /** Return the channel associated with a YouTube username. */
        public var forUsername: String?

        /** Stands for "host language". Specifies the localization language of the metadata to be filled into snippet.localized. The field is filled with the default metadata if there is no localization in the specified language. The parameter value must be a language code included in the list returned by the i18nLanguages.list method (e.g. en_US, es_MX). */
        public var hl: String?

        /** Return the channels with the specified IDs. */
        public var id: [String]?

        /** Return the channels managed by the authenticated user. */
        public var managedByMe: Bool?

        /** The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. */
        public var maxResults: Int?

        /** Return the ids of channels owned by the authenticated user. */
        public var mine: Bool?

        /** Return the channels subscribed to the authenticated user */
        public var mySubscribers: Bool?

        /** *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner. */
        public var onBehalfOfContentOwner: String?

        /** The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved. */
        public var pageToken: String?

        public init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, part: [String], categoryId: String? = nil, forUsername: String? = nil, hl: String? = nil, id: [String]? = nil, managedByMe: Bool? = nil, maxResults: Int? = nil, mine: Bool? = nil, mySubscribers: Bool? = nil, onBehalfOfContentOwner: String? = nil, pageToken: String? = nil) {
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
          self.categoryId = categoryId
          self.forUsername = forUsername
          self.hl = hl
          self.id = id
          self.managedByMe = managedByMe
          self.maxResults = maxResults
          self.mine = mine
          self.mySubscribers = mySubscribers
          self.onBehalfOfContentOwner = onBehalfOfContentOwner
          self.pageToken = pageToken
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
      }

      /// convenience initialiser so an Option doesn't have to be created
      public init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, part: [String], categoryId: String? = nil, forUsername: String? = nil, hl: String? = nil, id: [String]? = nil, managedByMe: Bool? = nil, maxResults: Int? = nil, mine: Bool? = nil, mySubscribers: Bool? = nil, onBehalfOfContentOwner: String? = nil, pageToken: String? = nil) {
        let options = Options(dollarXgafv: dollarXgafv, accessToken: accessToken, alt: alt, callback: callback, fields: fields, key: key, oauthToken: oauthToken, prettyPrint: prettyPrint, quotaUser: quotaUser, uploadProtocol: uploadProtocol, uploadType: uploadType, part: part, categoryId: categoryId, forUsername: forUsername, hl: hl, id: id, managedByMe: managedByMe, maxResults: maxResults, mine: mine, mySubscribers: mySubscribers, onBehalfOfContentOwner: onBehalfOfContentOwner, pageToken: pageToken)
        self.init(options: options)
      }

      public var queryParameters: [String: Any] {
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
        if let categoryId = options.categoryId {
          params["categoryId"] = categoryId
        }
        if let forUsername = options.forUsername {
          params["forUsername"] = forUsername
        }
        if let hl = options.hl {
          params["hl"] = hl
        }
        if let id = options.id?.joined(separator: ",") {
          params["id"] = id
        }
        if let managedByMe = options.managedByMe {
          params["managedByMe"] = managedByMe
        }
        if let maxResults = options.maxResults {
          params["maxResults"] = maxResults
        }
        if let mine = options.mine {
          params["mine"] = mine
        }
        if let mySubscribers = options.mySubscribers {
          params["mySubscribers"] = mySubscribers
        }
        if let onBehalfOfContentOwner = options.onBehalfOfContentOwner {
          params["onBehalfOfContentOwner"] = onBehalfOfContentOwner
        }
        if let pageToken = options.pageToken {
          params["pageToken"] = pageToken
        }
        return params
      }
    }

    public enum Response: Prch.Response {
      public var response: Prch.ClientResult<SuccessType, FailureType> {
        switch self {
        case let .status200(response):
          return .success(response)
        }
      }

      public typealias FailureType = Never
      public typealias APIType = YouTube.API
      public typealias SuccessType = ChannelListResponse

      /** Successful response */
      case status200(ChannelListResponse)

      public var success: ChannelListResponse? {
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
        case 200: self = try .status200(decoder.decode(ChannelListResponse.self, from: data))
        default: throw ClientError.unexpectedStatusCode(statusCode: statusCode, data: data)
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
