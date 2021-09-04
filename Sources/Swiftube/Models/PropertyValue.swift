import Foundation
import Prch

/** A pair Property / Value. */
public struct PropertyValue: Model {
  /** A property. */
  public var property: String?

  /** The property's value. */
  public var value: String?

  public init(property: String? = nil, value: String? = nil) {
    self.property = property
    self.value = value
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    property = try container.decodeIfPresent("property")
    value = try container.decodeIfPresent("value")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(property, forKey: "property")
    try container.encodeIfPresent(value, forKey: "value")
  }
}
