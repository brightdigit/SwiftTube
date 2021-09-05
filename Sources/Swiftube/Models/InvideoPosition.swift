import Foundation
import Prch

/** Describes the spatial position of a visual widget inside a video. It is a union of various position types, out of which only will be set one. */
public struct InvideoPosition: Model {
  /** Describes in which corner of the video the visual widget will appear. */
  public enum CornerPosition: String, Codable, Equatable, CaseIterable {
    case topLeft
    case topRight
    case bottomLeft
    case bottomRight
  }

  /** Defines the position type. */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case corner
  }

  /** Describes in which corner of the video the visual widget will appear. */
  public var cornerPosition: CornerPosition?

  /** Defines the position type. */
  public var type: `Type`?

  public init(cornerPosition: CornerPosition? = nil, type: Type? = nil) {
    self.cornerPosition = cornerPosition
    self.type = type
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    cornerPosition = try container.decodeIfPresent("cornerPosition")
    type = try container.decodeIfPresent("type")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(cornerPosition, forKey: "cornerPosition")
    try container.encodeIfPresent(type, forKey: "type")
  }
}
