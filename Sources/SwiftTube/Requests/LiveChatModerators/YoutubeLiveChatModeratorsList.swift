import Foundation
import Prch

public extension LiveChatModerators {
  /** Retrieves a list of resources, possibly filtered. */
  enum YoutubeLiveChatModeratorsList {
    public static let service = Service<Response>(id: "youtube.liveChatModerators.list", tag: "liveChatModerators", method: "GET", path: "/youtube/v3/liveChat/moderators", hasBody: false, securityRequirements: [SecurityRequirement(type: "Oauth2", scopes: ["https://www.googleapis.com/auth/youtube"]), SecurityRequirement(type: "Oauth2c", scopes: ["https://www.googleapis.com/auth/youtube.force-ssl"]), SecurityRequirement(type: "Oauth2", scopes: ["https://www.googleapis.com/auth/youtube.readonly"])])

    public struct Request: ServiceRequest {
      public typealias ResponseType = Response

      public var service: Service<Response> {
        YoutubeLiveChatModeratorsList.service
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

        /** The id of the live chat for which moderators should be returned. */
        public var liveChatId: String

        /** The *part* parameter specifies the liveChatModerator resource parts that the API response will include. Supported values are id and snippet. */
        public var part: [String]

        /** The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. */
        public var maxResults: Int?

        /** The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved. */
        public var pageToken: String?

        public init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, liveChatId: String, part: [String], maxResults: Int? = nil, pageToken: String? = nil) {
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
          self.liveChatId = liveChatId
          self.part = part
          self.maxResults = maxResults
          self.pageToken = pageToken
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
      }

      /// convenience initialiser so an Option doesn't have to be created
      public init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, liveChatId: String, part: [String], maxResults: Int? = nil, pageToken: String? = nil) {
        let options = Options(dollarXgafv: dollarXgafv, accessToken: accessToken, alt: alt, callback: callback, fields: fields, key: key, oauthToken: oauthToken, prettyPrint: prettyPrint, quotaUser: quotaUser, uploadProtocol: uploadProtocol, uploadType: uploadType, liveChatId: liveChatId, part: part, maxResults: maxResults, pageToken: pageToken)
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
        params["liveChatId"] = options.liveChatId
        params["part"] = options.part.joined(separator: ",")
        if let maxResults = options.maxResults {
          params["maxResults"] = maxResults
        }
        if let pageToken = options.pageToken {
          params["pageToken"] = pageToken
        }
        return params
      }
    }

    public enum Response: DeprecatedResponse, CustomStringConvertible, CustomDebugStringConvertible {
      public typealias FailureType = Never
      public typealias APIType = YouTube.API
      public typealias SuccessType = LiveChatModeratorListResponse

      /** Successful response */
      case status200(LiveChatModeratorListResponse)

      public var success: LiveChatModeratorListResponse? {
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
        case 200: self = try .status200(decoder.decode(LiveChatModeratorListResponse.self, from: data))
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
