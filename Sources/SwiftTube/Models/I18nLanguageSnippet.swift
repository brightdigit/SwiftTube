import Foundation
import Prch

/** Basic details about an i18n language, such as language code and human-readable name. */
public struct I18nLanguageSnippet: Model {
  /** A short BCP-47 code that uniquely identifies a language. */
  public var hl: String?

  /** The human-readable name of the language in the language itself. */
  public var name: String?

  public init(hl: String? = nil, name: String? = nil) {
    self.hl = hl
    self.name = name
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    hl = try container.decodeIfPresent("hl")
    name = try container.decodeIfPresent("name")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(hl, forKey: "hl")
    try container.encodeIfPresent(name, forKey: "name")
  }
}
