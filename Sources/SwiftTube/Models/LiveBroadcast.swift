import Foundation
import Prch

/** A *liveBroadcast* resource represents an event that will be streamed, via live video, on YouTube. */
public struct LiveBroadcast: Model {
  /** The contentDetails object contains information about the event's video content, such as whether the content can be shown in an embedded video player or if it will be archived and therefore available for viewing after the event has concluded. */
  public var contentDetails: LiveBroadcastContentDetails?

  /** Etag of this resource. */
  public var etag: String?

  /** The ID that YouTube assigns to uniquely identify the broadcast. */
  public var id: String?

  /** Identifies what kind of resource this is. Value: the fixed string "youtube#liveBroadcast". */
  public var kind: String?

  /** The snippet object contains basic details about the event, including its title, description, start time, and end time. */
  public var snippet: LiveBroadcastSnippet?

  /** The statistics object contains info about the event's current stats. These include concurrent viewers and total chat count. Statistics can change (in either direction) during the lifetime of an event. Statistics are only returned while the event is live. */
  public var statistics: LiveBroadcastStatistics?

  /** The status object contains information about the event's status. */
  public var status: LiveBroadcastStatus?

  public init(contentDetails: LiveBroadcastContentDetails? = nil, etag: String? = nil, id: String? = nil, kind: String? = nil, snippet: LiveBroadcastSnippet? = nil, statistics: LiveBroadcastStatistics? = nil, status: LiveBroadcastStatus? = nil) {
    self.contentDetails = contentDetails
    self.etag = etag
    self.id = id
    self.kind = kind
    self.snippet = snippet
    self.statistics = statistics
    self.status = status
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    contentDetails = try container.decodeIfPresent("contentDetails")
    etag = try container.decodeIfPresent("etag")
    id = try container.decodeIfPresent("id")
    kind = try container.decodeIfPresent("kind")
    snippet = try container.decodeIfPresent("snippet")
    statistics = try container.decodeIfPresent("statistics")
    status = try container.decodeIfPresent("status")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(contentDetails, forKey: "contentDetails")
    try container.encodeIfPresent(etag, forKey: "etag")
    try container.encodeIfPresent(id, forKey: "id")
    try container.encodeIfPresent(kind, forKey: "kind")
    try container.encodeIfPresent(snippet, forKey: "snippet")
    try container.encodeIfPresent(statistics, forKey: "statistics")
    try container.encodeIfPresent(status, forKey: "status")
  }
}
