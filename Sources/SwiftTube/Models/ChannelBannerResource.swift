import Foundation
import Prch

/** A channel banner returned as the response to a channel_banner.insert call. */
public struct ChannelBannerResource: Model {
  public var etag: String?

  /** Identifies what kind of resource this is. Value: the fixed string "youtube#channelBannerResource". */
  public var kind: String?

  /** The URL of this banner image. */
  public var url: String?

  public init(etag: String? = nil, kind: String? = nil, url: String? = nil) {
    self.etag = etag
    self.kind = kind
    self.url = url
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    etag = try container.decodeIfPresent("etag")
    kind = try container.decodeIfPresent("kind")
    url = try container.decodeIfPresent("url")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(etag, forKey: "etag")
    try container.encodeIfPresent(kind, forKey: "kind")
    try container.encodeIfPresent(url, forKey: "url")
  }
}
