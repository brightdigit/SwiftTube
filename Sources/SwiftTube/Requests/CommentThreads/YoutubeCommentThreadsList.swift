import Foundation
import Prch

public extension CommentThreads {
  /** Retrieves a list of resources, possibly filtered. */
  enum YoutubeCommentThreadsList {
    public static let service = APIService<Response>(id: "youtube.commentThreads.list", tag: "commentThreads", method: "GET", path: "/youtube/v3/commentThreads", hasBody: false, securityRequirements: [SecurityRequirement(type: "Oauth2c", scopes: ["https://www.googleapis.com/auth/youtube.force-ssl"])])

    /** Limits the returned comment threads to those with the specified moderation status. Not compatible with the 'id' filter. Valid values: published, heldForReview, likelySpam. */
    public enum ModerationStatus: String, Codable, Equatable, CaseIterable {
      case published
      case heldForReview
      case likelySpam
      case rejected
    }

    /** Retrieves a list of resources, possibly filtered. */
    public enum Order: String, Codable, Equatable, CaseIterable {
      case orderUnspecified
      case time
      case relevance
    }

    /** The requested text format for the returned comments. */
    public enum TextFormat: String, Codable, Equatable, CaseIterable {
      case textFormatUnspecified
      case html
      case plainText
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

        /** The *part* parameter specifies a comma-separated list of one or more commentThread resource properties that the API response will include. */
        public var part: [String]

        /** Returns the comment threads of all videos of the channel and the channel comments as well. */
        public var allThreadsRelatedToChannelId: String?

        /** Returns the comment threads for all the channel comments (ie does not include comments left on videos). */
        public var channelId: String?

        /** Returns the comment threads with the given IDs for Stubby or Apiary. */
        public var id: [String]?

        /** The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. */
        public var maxResults: Int?

        /** Limits the returned comment threads to those with the specified moderation status. Not compatible with the 'id' filter. Valid values: published, heldForReview, likelySpam. */
        public var moderationStatus: ModerationStatus?

        public var order: Order?

        /** The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved. */
        public var pageToken: String?

        /** Limits the returned comment threads to those matching the specified key words. Not compatible with the 'id' filter. */
        public var searchTerms: String?

        /** The requested text format for the returned comments. */
        public var textFormat: TextFormat?

        /** Returns the comment threads of the specified video. */
        public var videoId: String?

        public init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, part: [String], allThreadsRelatedToChannelId: String? = nil, channelId: String? = nil, id: [String]? = nil, maxResults: Int? = nil, moderationStatus: ModerationStatus? = nil, order: Order? = nil, pageToken: String? = nil, searchTerms: String? = nil, textFormat: TextFormat? = nil, videoId: String? = nil) {
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
          self.allThreadsRelatedToChannelId = allThreadsRelatedToChannelId
          self.channelId = channelId
          self.id = id
          self.maxResults = maxResults
          self.moderationStatus = moderationStatus
          self.order = order
          self.pageToken = pageToken
          self.searchTerms = searchTerms
          self.textFormat = textFormat
          self.videoId = videoId
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
        super.init(service: YoutubeCommentThreadsList.service)
      }

      /// convenience initialiser so an Option doesn't have to be created
      public convenience init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, part: [String], allThreadsRelatedToChannelId: String? = nil, channelId: String? = nil, id: [String]? = nil, maxResults: Int? = nil, moderationStatus: ModerationStatus? = nil, order: Order? = nil, pageToken: String? = nil, searchTerms: String? = nil, textFormat: TextFormat? = nil, videoId: String? = nil) {
        let options = Options(dollarXgafv: dollarXgafv, accessToken: accessToken, alt: alt, callback: callback, fields: fields, key: key, oauthToken: oauthToken, prettyPrint: prettyPrint, quotaUser: quotaUser, uploadProtocol: uploadProtocol, uploadType: uploadType, part: part, allThreadsRelatedToChannelId: allThreadsRelatedToChannelId, channelId: channelId, id: id, maxResults: maxResults, moderationStatus: moderationStatus, order: order, pageToken: pageToken, searchTerms: searchTerms, textFormat: textFormat, videoId: videoId)
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
        if let allThreadsRelatedToChannelId = options.allThreadsRelatedToChannelId {
          params["allThreadsRelatedToChannelId"] = allThreadsRelatedToChannelId
        }
        if let channelId = options.channelId {
          params["channelId"] = channelId
        }
        if let id = options.id?.joined(separator: ",") {
          params["id"] = id
        }
        if let maxResults = options.maxResults {
          params["maxResults"] = maxResults
        }
        if let moderationStatus = options.moderationStatus?.encode() {
          params["moderationStatus"] = moderationStatus
        }
        if let order = options.order?.encode() {
          params["order"] = order
        }
        if let pageToken = options.pageToken {
          params["pageToken"] = pageToken
        }
        if let searchTerms = options.searchTerms {
          params["searchTerms"] = searchTerms
        }
        if let textFormat = options.textFormat?.encode() {
          params["textFormat"] = textFormat
        }
        if let videoId = options.videoId {
          params["videoId"] = videoId
        }
        return params
      }
    }

    public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
      public typealias FailureType = Never
      public typealias APIType = YouTube.API
      public typealias SuccessType = CommentThreadListResponse

      /** Successful response */
      case status200(CommentThreadListResponse)

      public var success: CommentThreadListResponse? {
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
        case 200: self = try .status200(decoder.decode(CommentThreadListResponse.self, from: data))
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
