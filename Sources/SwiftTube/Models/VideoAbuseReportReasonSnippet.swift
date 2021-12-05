import Foundation
import Prch

/** Basic details about a video category, such as its localized title. */
public struct VideoAbuseReportReasonSnippet: Model {
  /** The localized label belonging to this abuse report reason. */
  public var label: String?

  /** The secondary reasons associated with this reason, if any are available. (There might be 0 or more.) */
  public var secondaryReasons: [VideoAbuseReportSecondaryReason]?

  public init(label: String? = nil, secondaryReasons: [VideoAbuseReportSecondaryReason]? = nil) {
    self.label = label
    self.secondaryReasons = secondaryReasons
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    label = try container.decodeIfPresent("label")
    secondaryReasons = try container.decodeArrayIfPresent("secondaryReasons")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(label, forKey: "label")
    try container.encodeIfPresent(secondaryReasons, forKey: "secondaryReasons")
  }
}
