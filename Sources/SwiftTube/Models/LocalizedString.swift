import Foundation
import Prch

public struct LocalizedString: Model {
  public var language: String?

  public var value: String?

  public init(language: String? = nil, value: String? = nil) {
    self.language = language
    self.value = value
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    language = try container.decodeIfPresent("language")
    value = try container.decodeIfPresent("value")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(language, forKey: "language")
    try container.encodeIfPresent(value, forKey: "value")
  }
}
