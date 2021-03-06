import Foundation
import Prch

/** A *third party account link* resource represents a link between a YouTube account or a channel and an account on a third-party service. */
public struct ThirdPartyLink: Model {
  /** Etag of this resource */
  public var etag: String?

  /** Identifies what kind of resource this is. Value: the fixed string "youtube#thirdPartyLink". */
  public var kind: String?

  /** The linking_token identifies a YouTube account and channel with which the third party account is linked. */
  public var linkingToken: String?

  /** The snippet object contains basic details about the third- party account link. */
  public var snippet: ThirdPartyLinkSnippet?

  /** The status object contains information about the status of the link. */
  public var status: ThirdPartyLinkStatus?

  public init(etag: String? = nil, kind: String? = nil, linkingToken: String? = nil, snippet: ThirdPartyLinkSnippet? = nil, status: ThirdPartyLinkStatus? = nil) {
    self.etag = etag
    self.kind = kind
    self.linkingToken = linkingToken
    self.snippet = snippet
    self.status = status
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    etag = try container.decodeIfPresent("etag")
    kind = try container.decodeIfPresent("kind")
    linkingToken = try container.decodeIfPresent("linkingToken")
    snippet = try container.decodeIfPresent("snippet")
    status = try container.decodeIfPresent("status")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(etag, forKey: "etag")
    try container.encodeIfPresent(kind, forKey: "kind")
    try container.encodeIfPresent(linkingToken, forKey: "linkingToken")
    try container.encodeIfPresent(snippet, forKey: "snippet")
    try container.encodeIfPresent(status, forKey: "status")
  }
}
