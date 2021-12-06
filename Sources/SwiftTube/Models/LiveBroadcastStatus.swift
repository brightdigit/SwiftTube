import Foundation
import Prch

/** Live broadcast state. */
public struct LiveBroadcastStatus: Model {
  /** The broadcast's status. The status can be updated using the API's liveBroadcasts.transition method. */
  public enum LifeCycleStatus: String, Codable, Equatable, CaseIterable {
    case lifeCycleStatusUnspecified
    case created
    case ready
    case testing
    case live
    case complete
    case revoked
    case testStarting
    case liveStarting
  }

  /** Priority of the live broadcast event (internal state). */
  public enum LiveBroadcastPriority: String, Codable, Equatable, CaseIterable {
    case liveBroadcastPriorityUnspecified
    case low
    case normal
    case high
  }

  /** The broadcast's privacy status. Note that the broadcast represents exactly one YouTube video, so the privacy settings are identical to those supported for videos. In addition, you can set this field by modifying the broadcast resource or by setting the privacyStatus field of the corresponding video resource. */
  public enum PrivacyStatus: String, Codable, Equatable, CaseIterable {
    case `public`
    case unlisted
    case `private`
  }

  /** The broadcast's recording status. */
  public enum RecordingStatus: String, Codable, Equatable, CaseIterable {
    case liveBroadcastRecordingStatusUnspecified
    case notRecording
    case recording
    case recorded
  }

  /** The broadcast's status. The status can be updated using the API's liveBroadcasts.transition method. */
  public var lifeCycleStatus: LifeCycleStatus?

  /** Priority of the live broadcast event (internal state). */
  public var liveBroadcastPriority: LiveBroadcastPriority?

  /** Whether the broadcast is made for kids or not, decided by YouTube instead of the creator. This field is read only. */
  public var madeForKids: Bool?

  /** The broadcast's privacy status. Note that the broadcast represents exactly one YouTube video, so the privacy settings are identical to those supported for videos. In addition, you can set this field by modifying the broadcast resource or by setting the privacyStatus field of the corresponding video resource. */
  public var privacyStatus: PrivacyStatus?

  /** The broadcast's recording status. */
  public var recordingStatus: RecordingStatus?

  /** This field will be set to True if the creator declares the broadcast to be kids only: go/live-cw-work. */
  public var selfDeclaredMadeForKids: Bool?

  public init(lifeCycleStatus: LifeCycleStatus? = nil, liveBroadcastPriority: LiveBroadcastPriority? = nil, madeForKids: Bool? = nil, privacyStatus: PrivacyStatus? = nil, recordingStatus: RecordingStatus? = nil, selfDeclaredMadeForKids: Bool? = nil) {
    self.lifeCycleStatus = lifeCycleStatus
    self.liveBroadcastPriority = liveBroadcastPriority
    self.madeForKids = madeForKids
    self.privacyStatus = privacyStatus
    self.recordingStatus = recordingStatus
    self.selfDeclaredMadeForKids = selfDeclaredMadeForKids
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    lifeCycleStatus = try container.decodeIfPresent("lifeCycleStatus")
    liveBroadcastPriority = try container.decodeIfPresent("liveBroadcastPriority")
    madeForKids = try container.decodeIfPresent("madeForKids")
    privacyStatus = try container.decodeIfPresent("privacyStatus")
    recordingStatus = try container.decodeIfPresent("recordingStatus")
    selfDeclaredMadeForKids = try container.decodeIfPresent("selfDeclaredMadeForKids")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(lifeCycleStatus, forKey: "lifeCycleStatus")
    try container.encodeIfPresent(liveBroadcastPriority, forKey: "liveBroadcastPriority")
    try container.encodeIfPresent(madeForKids, forKey: "madeForKids")
    try container.encodeIfPresent(privacyStatus, forKey: "privacyStatus")
    try container.encodeIfPresent(recordingStatus, forKey: "recordingStatus")
    try container.encodeIfPresent(selfDeclaredMadeForKids, forKey: "selfDeclaredMadeForKids")
  }
}
