import Foundation
import Prch

public struct PlaylistContentDetails: Model {
  /** The number of videos in the playlist. */
  public var itemCount: Int?

  public init(itemCount: Int? = nil) {
    self.itemCount = itemCount
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    itemCount = try container.decodeIfPresent("itemCount")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(itemCount, forKey: "itemCount")
  }
}
