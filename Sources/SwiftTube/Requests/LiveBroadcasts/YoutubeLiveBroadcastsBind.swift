import Foundation
import Prch

public extension LiveBroadcasts {
  /** Bind a broadcast to a stream. */
  enum YoutubeLiveBroadcastsBind {
    public static let service = Service<Response>(id: "youtube.liveBroadcasts.bind", tag: "liveBroadcasts", method: "POST", path: "/youtube/v3/liveBroadcasts/bind", hasBody: false, securityRequirements: [SecurityRequirement(type: "Oauth2c", scopes: ["https://www.googleapis.com/auth/youtube"]), SecurityRequirement(type: "Oauth2c", scopes: ["https://www.googleapis.com/auth/youtube.force-ssl"])])

    public struct Request: ServiceRequest {
      public typealias ResponseType = Response

      public var service: Service<Response> {
        YoutubeLiveBroadcastsBind.service
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

        /** Broadcast to bind to the stream */
        public var id: String

        /** The *part* parameter specifies a comma-separated list of one or more liveBroadcast resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, contentDetails, and status. */
        public var part: [String]

        /** *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner. */
        public var onBehalfOfContentOwner: String?

        /** This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel. */
        public var onBehalfOfContentOwnerChannel: String?

        /** Stream to bind, if not set unbind the current one. */
        public var streamId: String?

        public init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, id: String, part: [String], onBehalfOfContentOwner: String? = nil, onBehalfOfContentOwnerChannel: String? = nil, streamId: String? = nil) {
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
          self.id = id
          self.part = part
          self.onBehalfOfContentOwner = onBehalfOfContentOwner
          self.onBehalfOfContentOwnerChannel = onBehalfOfContentOwnerChannel
          self.streamId = streamId
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
      }

      /// convenience initialiser so an Option doesn't have to be created
      public init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, id: String, part: [String], onBehalfOfContentOwner: String? = nil, onBehalfOfContentOwnerChannel: String? = nil, streamId: String? = nil) {
        let options = Options(dollarXgafv: dollarXgafv, accessToken: accessToken, alt: alt, callback: callback, fields: fields, key: key, oauthToken: oauthToken, prettyPrint: prettyPrint, quotaUser: quotaUser, uploadProtocol: uploadProtocol, uploadType: uploadType, id: id, part: part, onBehalfOfContentOwner: onBehalfOfContentOwner, onBehalfOfContentOwnerChannel: onBehalfOfContentOwnerChannel, streamId: streamId)
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
        params["id"] = options.id
        params["part"] = options.part.joined(separator: ",")
        if let onBehalfOfContentOwner = options.onBehalfOfContentOwner {
          params["onBehalfOfContentOwner"] = onBehalfOfContentOwner
        }
        if let onBehalfOfContentOwnerChannel = options.onBehalfOfContentOwnerChannel {
          params["onBehalfOfContentOwnerChannel"] = onBehalfOfContentOwnerChannel
        }
        if let streamId = options.streamId {
          params["streamId"] = streamId
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
      public typealias SuccessType = LiveBroadcast

      /** Successful response */
      case status200(LiveBroadcast)

      public var success: LiveBroadcast? {
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
        case 200: self = try .status200(decoder.decode(LiveBroadcast.self, from: data))
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
