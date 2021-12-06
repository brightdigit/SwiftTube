import Foundation
import Prch

public struct I18nLanguageListResponse: Model {
  /** Etag of this resource. */
  public var etag: String?

  /** Serialized EventId of the request which produced this response. */
  public var eventId: String?

  /** A list of supported i18n languages. In this map, the i18n language ID is the map key, and its value is the corresponding i18nLanguage resource. */
  public var items: [I18nLanguage]?

  /** Identifies what kind of resource this is. Value: the fixed string "youtube#i18nLanguageListResponse". */
  public var kind: String?

  /** The visitorId identifies the visitor. */
  public var visitorId: String?

  public init(etag: String? = nil, eventId: String? = nil, items: [I18nLanguage]? = nil, kind: String? = nil, visitorId: String? = nil) {
    self.etag = etag
    self.eventId = eventId
    self.items = items
    self.kind = kind
    self.visitorId = visitorId
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    etag = try container.decodeIfPresent("etag")
    eventId = try container.decodeIfPresent("eventId")
    items = try container.decodeArrayIfPresent("items")
    kind = try container.decodeIfPresent("kind")
    visitorId = try container.decodeIfPresent("visitorId")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(etag, forKey: "etag")
    try container.encodeIfPresent(eventId, forKey: "eventId")
    try container.encodeIfPresent(items, forKey: "items")
    try container.encodeIfPresent(kind, forKey: "kind")
    try container.encodeIfPresent(visitorId, forKey: "visitorId")
  }
}
