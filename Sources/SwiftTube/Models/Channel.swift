import Foundation
import Prch

/** A *channel* resource contains information about a YouTube channel. */
public struct Channel: Model {
  /** The auditionDetails object encapsulates channel data that is relevant for YouTube Partners during the audition process. */
  public var auditDetails: ChannelAuditDetails?

  /** The brandingSettings object encapsulates information about the branding of the channel. */
  public var brandingSettings: ChannelBrandingSettings?

  /** The contentDetails object encapsulates information about the channel's content. */
  public var contentDetails: ChannelContentDetails?

  /** The contentOwnerDetails object encapsulates channel data that is relevant for YouTube Partners linked with the channel. */
  public var contentOwnerDetails: ChannelContentOwnerDetails?

  /** The conversionPings object encapsulates information about conversion pings that need to be respected by the channel. */
  public var conversionPings: ChannelConversionPings?

  /** Etag of this resource. */
  public var etag: String?

  /** The ID that YouTube uses to uniquely identify the channel. */
  public var id: String?

  /** Identifies what kind of resource this is. Value: the fixed string "youtube#channel". */
  public var kind: String?

  /** Localizations for different languages */
  public var localizations: [String: ChannelLocalization]?

  /** The snippet object contains basic details about the channel, such as its title, description, and thumbnail images. */
  public var snippet: ChannelSnippet?

  /** The statistics object encapsulates statistics for the channel. */
  public var statistics: ChannelStatistics?

  /** The status object encapsulates information about the privacy status of the channel. */
  public var status: ChannelStatus?

  /** The topicDetails object encapsulates information about Freebase topics associated with the channel. */
  public var topicDetails: ChannelTopicDetails?

  public init(auditDetails: ChannelAuditDetails? = nil, brandingSettings: ChannelBrandingSettings? = nil, contentDetails: ChannelContentDetails? = nil, contentOwnerDetails: ChannelContentOwnerDetails? = nil, conversionPings: ChannelConversionPings? = nil, etag: String? = nil, id: String? = nil, kind: String? = nil, localizations: [String: ChannelLocalization]? = nil, snippet: ChannelSnippet? = nil, statistics: ChannelStatistics? = nil, status: ChannelStatus? = nil, topicDetails: ChannelTopicDetails? = nil) {
    self.auditDetails = auditDetails
    self.brandingSettings = brandingSettings
    self.contentDetails = contentDetails
    self.contentOwnerDetails = contentOwnerDetails
    self.conversionPings = conversionPings
    self.etag = etag
    self.id = id
    self.kind = kind
    self.localizations = localizations
    self.snippet = snippet
    self.statistics = statistics
    self.status = status
    self.topicDetails = topicDetails
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    auditDetails = try container.decodeIfPresent("auditDetails")
    brandingSettings = try container.decodeIfPresent("brandingSettings")
    contentDetails = try container.decodeIfPresent("contentDetails")
    contentOwnerDetails = try container.decodeIfPresent("contentOwnerDetails")
    conversionPings = try container.decodeIfPresent("conversionPings")
    etag = try container.decodeIfPresent("etag")
    id = try container.decodeIfPresent("id")
    kind = try container.decodeIfPresent("kind")
    localizations = try container.decodeIfPresent("localizations")
    snippet = try container.decodeIfPresent("snippet")
    statistics = try container.decodeIfPresent("statistics")
    status = try container.decodeIfPresent("status")
    topicDetails = try container.decodeIfPresent("topicDetails")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(auditDetails, forKey: "auditDetails")
    try container.encodeIfPresent(brandingSettings, forKey: "brandingSettings")
    try container.encodeIfPresent(contentDetails, forKey: "contentDetails")
    try container.encodeIfPresent(contentOwnerDetails, forKey: "contentOwnerDetails")
    try container.encodeIfPresent(conversionPings, forKey: "conversionPings")
    try container.encodeIfPresent(etag, forKey: "etag")
    try container.encodeIfPresent(id, forKey: "id")
    try container.encodeIfPresent(kind, forKey: "kind")
    try container.encodeIfPresent(localizations, forKey: "localizations")
    try container.encodeIfPresent(snippet, forKey: "snippet")
    try container.encodeIfPresent(statistics, forKey: "statistics")
    try container.encodeIfPresent(status, forKey: "status")
    try container.encodeIfPresent(topicDetails, forKey: "topicDetails")
  }
}
