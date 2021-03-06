import Foundation
import Prch

public struct ChannelSection: Model {
  /** The contentDetails object contains details about the channel section content, such as a list of playlists or channels featured in the section. */
  public var contentDetails: ChannelSectionContentDetails?

  /** Etag of this resource. */
  public var etag: String?

  /** The ID that YouTube uses to uniquely identify the channel section. */
  public var id: String?

  /** Identifies what kind of resource this is. Value: the fixed string "youtube#channelSection". */
  public var kind: String?

  /** Localizations for different languages */
  public var localizations: [String: ChannelSectionLocalization]?

  /** The snippet object contains basic details about the channel section, such as its type, style and title. */
  public var snippet: ChannelSectionSnippet?

  /** The targeting object contains basic targeting settings about the channel section. */
  public var targeting: ChannelSectionTargeting?

  public init(contentDetails: ChannelSectionContentDetails? = nil, etag: String? = nil, id: String? = nil, kind: String? = nil, localizations: [String: ChannelSectionLocalization]? = nil, snippet: ChannelSectionSnippet? = nil, targeting: ChannelSectionTargeting? = nil) {
    self.contentDetails = contentDetails
    self.etag = etag
    self.id = id
    self.kind = kind
    self.localizations = localizations
    self.snippet = snippet
    self.targeting = targeting
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    contentDetails = try container.decodeIfPresent("contentDetails")
    etag = try container.decodeIfPresent("etag")
    id = try container.decodeIfPresent("id")
    kind = try container.decodeIfPresent("kind")
    localizations = try container.decodeIfPresent("localizations")
    snippet = try container.decodeIfPresent("snippet")
    targeting = try container.decodeIfPresent("targeting")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(contentDetails, forKey: "contentDetails")
    try container.encodeIfPresent(etag, forKey: "etag")
    try container.encodeIfPresent(id, forKey: "id")
    try container.encodeIfPresent(kind, forKey: "kind")
    try container.encodeIfPresent(localizations, forKey: "localizations")
    try container.encodeIfPresent(snippet, forKey: "snippet")
    try container.encodeIfPresent(targeting, forKey: "targeting")
  }
}
