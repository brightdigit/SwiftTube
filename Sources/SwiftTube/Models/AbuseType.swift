import Foundation
import Prch

public struct AbuseType: Model {
  public var id: String?

  public init(id: String? = nil) {
    self.id = id
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    id = try container.decodeIfPresent("id")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(id, forKey: "id")
  }
}
