import Foundation
import Prch

public extension ThirdPartyLinks {
  /** Deletes a resource. */
  enum YoutubeThirdPartyLinksDelete {
    public static let service = APIService<Response>(id: "youtube.thirdPartyLinks.delete", tag: "thirdPartyLinks", method: "DELETE", path: "/youtube/v3/thirdPartyLinks", hasBody: false, securityRequirements: [])

    /** Type of the link to be deleted. */
    public enum `Type`: String, Codable, Equatable, CaseIterable {
      case linkUnspecified
      case channelToStoreLink
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

        /** Delete the partner links with the given linking token. */
        public var linkingToken: String

        /** Type of the link to be deleted. */
        public var type: `Type`

        /** Do not use. Required for compatibility. */
        public var part: [String]?

        public init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, linkingToken: String, type: Type, part: [String]? = nil) {
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
          self.linkingToken = linkingToken
          self.type = type
          self.part = part
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: YoutubeThirdPartyLinksDelete.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, linkingToken: String, type: Type, part: [String]? = nil) {
        let options = Options(dollarXgafv: dollarXgafv, accessToken: accessToken, alt: alt, callback: callback, fields: fields, key: key, oauthToken: oauthToken, prettyPrint: prettyPrint, quotaUser: quotaUser, uploadProtocol: uploadProtocol, uploadType: uploadType, linkingToken: linkingToken, type: type, part: part)
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
        params["linkingToken"] = options.linkingToken
        params["type"] = options.type.encode()
        if let part = options.part?.joined(separator: ",") {
          params["part"] = part
        }
        return params
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      public typealias SuccessType = Void

      /** Successful response */
      case status200

      public var success: Void? {
        switch self {
        case .status200: return ()
        }
      }

      public var response: Any {
        switch self {
        default: return ()
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

      public init(statusCode: Int, data: Data, decoder _: ResponseDecoder) throws {
        switch statusCode {
        case 200: self = .status200
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
