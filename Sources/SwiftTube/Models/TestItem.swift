import Foundation
import Prch

public struct TestItem: Model {
  public var featuredPart: Bool?

  public var gaia: String?

  public var id: String?

  public var snippet: TestItemTestItemSnippet?

  public init(featuredPart: Bool? = nil, gaia: String? = nil, id: String? = nil, snippet: TestItemTestItemSnippet? = nil) {
    self.featuredPart = featuredPart
    self.gaia = gaia
    self.id = id
    self.snippet = snippet
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    featuredPart = try container.decodeIfPresent("featuredPart")
    gaia = try container.decodeIfPresent("gaia")
    id = try container.decodeIfPresent("id")
    snippet = try container.decodeIfPresent("snippet")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(featuredPart, forKey: "featuredPart")
    try container.encodeIfPresent(gaia, forKey: "gaia")
    try container.encodeIfPresent(id, forKey: "id")
    try container.encodeIfPresent(snippet, forKey: "snippet")
  }
}
