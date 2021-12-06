import Foundation
import Prch

public struct RelatedEntity: Model {
  public var entity: Entity?

  public init(entity: Entity? = nil) {
    self.entity = entity
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    entity = try container.decodeIfPresent("entity")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(entity, forKey: "entity")
  }
}
