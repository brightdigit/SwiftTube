import Foundation
import Prch

public extension PlaylistItems {
  /** Retrieves a list of resources, possibly filtered. */
  enum YoutubePlaylistItemsList {
    public static let service = APIService<Response>(id: "youtube.playlistItems.list", tag: "playlistItems", method: "GET", path: "/youtube/v3/playlistItems", hasBody: false, securityRequirements: [SecurityRequirement(type: "Oauth2c", scopes: ["https://www.googleapis.com/auth/youtube"]), SecurityRequirement(type: "Oauth2c", scopes: ["https://www.googleapis.com/auth/youtube.force-ssl"]), SecurityRequirement(type: "Oauth2c", scopes: ["https://www.googleapis.com/auth/youtube.readonly"]), SecurityRequirement(type: "Oauth2c", scopes: ["https://www.googleapis.com/auth/youtubepartner"])])

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

        /** The *part* parameter specifies a comma-separated list of one or more playlistItem resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a playlistItem resource, the snippet property contains numerous fields, including the title, description, position, and resourceId properties. As such, if you set *part=snippet*, the API response will contain all of those properties. */
        public var part: [String]

        public var id: [String]?

        /** The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. */
        public var maxResults: Int?

        /** *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner. */
        public var onBehalfOfContentOwner: String?

        /** The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved. */
        public var pageToken: String?

        /** Return the playlist items within the given playlist. */
        public var playlistId: String?

        /** Return the playlist items associated with the given video ID. */
        public var videoId: String?

        public init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, part: [String], id: [String]? = nil, maxResults: Int? = nil, onBehalfOfContentOwner: String? = nil, pageToken: String? = nil, playlistId: String? = nil, videoId: String? = nil) {
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
          self.id = id
          self.maxResults = maxResults
          self.onBehalfOfContentOwner = onBehalfOfContentOwner
          self.pageToken = pageToken
          self.playlistId = playlistId
          self.videoId = videoId
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: YoutubePlaylistItemsList.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, part: [String], id: [String]? = nil, maxResults: Int? = nil, onBehalfOfContentOwner: String? = nil, pageToken: String? = nil, playlistId: String? = nil, videoId: String? = nil) {
        let options = Options(dollarXgafv: dollarXgafv, accessToken: accessToken, alt: alt, callback: callback, fields: fields, key: key, oauthToken: oauthToken, prettyPrint: prettyPrint, quotaUser: quotaUser, uploadProtocol: uploadProtocol, uploadType: uploadType, part: part, id: id, maxResults: maxResults, onBehalfOfContentOwner: onBehalfOfContentOwner, pageToken: pageToken, playlistId: playlistId, videoId: videoId)
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
        if let id = options.id?.joined(separator: ",") {
          params["id"] = id
        }
        if let maxResults = options.maxResults {
          params["maxResults"] = maxResults
        }
        if let onBehalfOfContentOwner = options.onBehalfOfContentOwner {
          params["onBehalfOfContentOwner"] = onBehalfOfContentOwner
        }
        if let pageToken = options.pageToken {
          params["pageToken"] = pageToken
        }
        if let playlistId = options.playlistId {
          params["playlistId"] = playlistId
        }
        if let videoId = options.videoId {
          params["videoId"] = videoId
        }
        return params
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      public typealias SuccessType = PlaylistItemListResponse

      /** Successful response */
      case status200(PlaylistItemListResponse)

      public var success: PlaylistItemListResponse? {
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
        case 200: self = try .status200(decoder.decode(PlaylistItemListResponse.self, from: data))
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
