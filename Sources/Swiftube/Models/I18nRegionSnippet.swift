import Foundation
import Prch

/** Basic details about an i18n region, such as region code and human-readable name. */
public struct I18nRegionSnippet: Model {
  /** The region code as a 2-letter ISO country code. */
  public var gl: String?

  /** The human-readable name of the region. */
  public var name: String?

  public init(gl: String? = nil, name: String? = nil) {
    self.gl = gl
    self.name = name
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    gl = try container.decodeIfPresent("gl")
    name = try container.decodeIfPresent("name")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(gl, forKey: "gl")
    try container.encodeIfPresent(name, forKey: "name")
  }
}
