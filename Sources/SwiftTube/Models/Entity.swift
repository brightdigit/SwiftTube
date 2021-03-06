import Foundation
import Prch

public struct Entity: Model {
  public var id: String?

  public var typeId: String?

  public var url: String?

  public init(id: String? = nil, typeId: String? = nil, url: String? = nil) {
    self.id = id
    self.typeId = typeId
    self.url = url
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    id = try container.decodeIfPresent("id")
    typeId = try container.decodeIfPresent("typeId")
    url = try container.decodeIfPresent("url")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(id, forKey: "id")
    try container.encodeIfPresent(typeId, forKey: "typeId")
    try container.encodeIfPresent(url, forKey: "url")
  }
}
