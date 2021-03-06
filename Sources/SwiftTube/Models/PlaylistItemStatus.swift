import Foundation
import Prch

/** Information about the playlist item's privacy status. */
public struct PlaylistItemStatus: Model {
  /** This resource's privacy status. */
  public enum PrivacyStatus: String, Codable, Equatable, CaseIterable {
    case `public`
    case unlisted
    case `private`
  }

  /** This resource's privacy status. */
  public var privacyStatus: PrivacyStatus?

  public init(privacyStatus: PrivacyStatus? = nil) {
    self.privacyStatus = privacyStatus
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    privacyStatus = try container.decodeIfPresent("privacyStatus")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(privacyStatus, forKey: "privacyStatus")
  }
}
