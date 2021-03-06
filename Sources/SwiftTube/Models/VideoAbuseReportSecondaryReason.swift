import Foundation
import Prch

public struct VideoAbuseReportSecondaryReason: Model {
  /** The ID of this abuse report secondary reason. */
  public var id: String?

  /** The localized label for this abuse report secondary reason. */
  public var label: String?

  public init(id: String? = nil, label: String? = nil) {
    self.id = id
    self.label = label
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    id = try container.decodeIfPresent("id")
    label = try container.decodeIfPresent("label")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(id, forKey: "id")
    try container.encodeIfPresent(label, forKey: "label")
  }
}
