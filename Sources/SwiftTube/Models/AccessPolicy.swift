import Foundation
import Prch

/** Rights management policy for YouTube resources. */
public struct AccessPolicy: Model {
  /** The value of allowed indicates whether the access to the policy is allowed or denied by default. */
  public var allowed: Bool?

  /** A list of region codes that identify countries where the default policy do not apply. */
  public var exception: [String]?

  public init(allowed: Bool? = nil, exception: [String]? = nil) {
    self.allowed = allowed
    self.exception = exception
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    allowed = try container.decodeIfPresent("allowed")
    exception = try container.decodeArrayIfPresent("exception")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(allowed, forKey: "allowed")
    try container.encodeIfPresent(exception, forKey: "exception")
  }
}
