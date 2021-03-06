import Foundation
import Prch

/** ChannelSection localization setting */
public struct ChannelSectionLocalization: Model {
  /** The localized strings for channel section's title. */
  public var title: String?

  public init(title: String? = nil) {
    self.title = title
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    title = try container.decodeIfPresent("title")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(title, forKey: "title")
  }
}
