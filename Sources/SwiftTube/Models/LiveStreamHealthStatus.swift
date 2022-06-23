import Foundation
import Prch

public struct LiveStreamHealthStatus: Model {
  /** The status code of this stream */
  public enum Status: String, Codable, Equatable, CaseIterable {
    case good
    case ok
    case bad
    case noData
    case revoked
  }

  /** The configurations issues on this stream */
  public var configurationIssues: [LiveStreamConfigurationIssue]?

  /** The last time this status was updated (in seconds) */
  public var lastUpDateSeconds: String?

  /** The status code of this stream */
  public var status: Status?

  public init(configurationIssues: [LiveStreamConfigurationIssue]? = nil, lastUpDateSeconds: String? = nil, status: Status? = nil) {
    self.configurationIssues = configurationIssues
    self.lastUpDateSeconds = lastUpDateSeconds
    self.status = status
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    configurationIssues = try container.decodeArrayIfPresent("configurationIssues")
    lastUpDateSeconds = try container.decodeIfPresent("lastUpDateSeconds")
    status = try container.decodeIfPresent("status")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(configurationIssues, forKey: "configurationIssues")
    try container.encodeIfPresent(lastUpDateSeconds, forKey: "lastUpDateSeconds")
    try container.encodeIfPresent(status, forKey: "status")
  }
}
