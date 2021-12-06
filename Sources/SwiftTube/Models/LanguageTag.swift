import Foundation
import Prch

public struct LanguageTag: Model {
  public var value: String?

  public init(value: String? = nil) {
    self.value = value
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    value = try container.decodeIfPresent("value")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(value, forKey: "value")
  }
}
