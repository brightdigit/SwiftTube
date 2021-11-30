import Foundation
import Prch

public struct LocalizedProperty: Model {
  /** The language of the default property. */
  public var defaultLanguage: LanguageTag?

  public var localized: [LocalizedString]?

  public init(defaultLanguage: LanguageTag? = nil, localized: [LocalizedString]? = nil) {
    self.defaultLanguage = defaultLanguage
    self.localized = localized
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    defaultLanguage = try container.decodeIfPresent("defaultLanguage")
    localized = try container.decodeArrayIfPresent("localized")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(defaultLanguage, forKey: "defaultLanguage")
    try container.encodeIfPresent(localized, forKey: "localized")
  }
}
