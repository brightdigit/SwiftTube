import Foundation
import Prch

/** Details about monetization of a YouTube Video. */
public struct VideoMonetizationDetails: Model {
  /** The value of access indicates whether the video can be monetized or not. */
  public var access: AccessPolicy?

  public init(access: AccessPolicy? = nil) {
    self.access = access
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    access = try container.decodeIfPresent("access")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(access, forKey: "access")
  }
}
