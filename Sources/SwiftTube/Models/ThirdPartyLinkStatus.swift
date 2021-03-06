import Foundation
import Prch

/** The third-party link status object contains information about the status of the link. */
public struct ThirdPartyLinkStatus: Model {
  /** The third-party link status object contains information about the status of the link. */
  public enum LinkStatus: String, Codable, Equatable, CaseIterable {
    case unknown
    case failed
    case pending
    case linked
  }

  public var linkStatus: LinkStatus?

  public init(linkStatus: LinkStatus? = nil) {
    self.linkStatus = linkStatus
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    linkStatus = try container.decodeIfPresent("linkStatus")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(linkStatus, forKey: "linkStatus")
  }
}
