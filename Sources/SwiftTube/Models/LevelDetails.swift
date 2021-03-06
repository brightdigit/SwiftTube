import Foundation
import Prch

public struct LevelDetails: Model {
  /** The name that should be used when referring to this level. */
  public var displayName: String?

  public init(displayName: String? = nil) {
    self.displayName = displayName
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    displayName = try container.decodeIfPresent("displayName")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(displayName, forKey: "displayName")
  }
}
