import Foundation
import Prch

public extension Captions {
  /** Inserts a new resource into this collection. */
  enum YoutubeCaptionsInsert {
    public static let service = Service<Response>(id: "youtube.captions.insert", tag: "captions", method: "POST", path: "/youtube/v3/captions", hasBody: true, securityRequirements: [SecurityRequirement(type: "Oauth2c", scopes: ["https://www.googleapis.com/auth/youtube.force-ssl"]), SecurityRequirement(type: "Oauth2c", scopes: ["https://www.googleapis.com/auth/youtubepartner"])])

    public struct Request: ServiceRequest {
      public typealias ResponseType = Response

      public var service: Service<Response> {
        YoutubeCaptionsInsert.service
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

        /** The *part* parameter specifies the caption resource parts that the API response will include. Set the parameter value to snippet. */
        public var part: [String]

        /** ID of the Google+ Page for the channel that the request is be on behalf of */
        public var onBehalfOf: String?

        /** *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner. */
        public var onBehalfOfContentOwner: String?

        /** Extra parameter to allow automatically syncing the uploaded caption/transcript with the audio. */
        public var sync: Bool?

        public init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, part: [String], onBehalfOf: String? = nil, onBehalfOfContentOwner: String? = nil, sync: Bool? = nil) {
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
          self.onBehalfOf = onBehalfOf
          self.onBehalfOfContentOwner = onBehalfOfContentOwner
          self.sync = sync
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
      }

      /// convenience initialiser so an Option doesn't have to be created
      public init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, part: [String], onBehalfOf: String? = nil, onBehalfOfContentOwner: String? = nil, sync: Bool? = nil) {
        let options = Options(dollarXgafv: dollarXgafv, accessToken: accessToken, alt: alt, callback: callback, fields: fields, key: key, oauthToken: oauthToken, prettyPrint: prettyPrint, quotaUser: quotaUser, uploadProtocol: uploadProtocol, uploadType: uploadType, part: part, onBehalfOf: onBehalfOf, onBehalfOfContentOwner: onBehalfOfContentOwner, sync: sync)
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
        if let onBehalfOf = options.onBehalfOf {
          params["onBehalfOf"] = onBehalfOf
        }
        if let onBehalfOfContentOwner = options.onBehalfOfContentOwner {
          params["onBehalfOfContentOwner"] = onBehalfOfContentOwner
        }
        if let sync = options.sync {
          params["sync"] = sync
        }
        return params
      }
    }

    public enum Response: DeprecatedResponse, CustomStringConvertible, CustomDebugStringConvertible {
      public typealias FailureType = Never
      public typealias APIType = YouTube.API
      public typealias SuccessType = Caption

      /** Successful response */
      case status200(Caption)

      public var success: Caption? {
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
        case 200: self = try .status200(decoder.decode(Caption.self, from: data))
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
