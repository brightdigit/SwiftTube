import Foundation
import Prch

/** Basic details about a caption track, such as its language and name. */
public struct CaptionSnippet: Model {
  /** The type of audio track associated with the caption track. */
  public enum AudioTrackType: String, Codable, Equatable, CaseIterable {
    case unknown
    case primary
    case commentary
    case descriptive
  }

  /** The reason that YouTube failed to process the caption track. This property is only present if the state property's value is failed. */
  public enum FailureReason: String, Codable, Equatable, CaseIterable {
    case unknownFormat
    case unsupportedFormat
    case processingFailed
  }

  /** The caption track's status. */
  public enum Status: String, Codable, Equatable, CaseIterable {
    case serving
    case syncing
    case failed
  }

  /** The caption track's type. */
  public enum TrackKind: String, Codable, Equatable, CaseIterable {
    case standard
    case asr = "ASR"
    case forced
  }

  /** The type of audio track associated with the caption track. */
  public var audioTrackType: AudioTrackType?

  /** The reason that YouTube failed to process the caption track. This property is only present if the state property's value is failed. */
  public var failureReason: FailureReason?

  /** Indicates whether YouTube synchronized the caption track to the audio track in the video. The value will be true if a sync was explicitly requested when the caption track was uploaded. For example, when calling the captions.insert or captions.update methods, you can set the sync parameter to true to instruct YouTube to sync the uploaded track to the video. If the value is false, YouTube uses the time codes in the uploaded caption track to determine when to display captions. */
  public var isAutoSynced: Bool?

  /** Indicates whether the track contains closed captions for the deaf and hard of hearing. The default value is false. */
  public var isCC: Bool?

  /** Indicates whether the caption track is a draft. If the value is true, then the track is not publicly visible. The default value is false. @mutable youtube.captions.insert youtube.captions.update */
  public var isDraft: Bool?

  /** Indicates whether caption track is formatted for "easy reader," meaning it is at a third-grade level for language learners. The default value is false. */
  public var isEasyReader: Bool?

  /** Indicates whether the caption track uses large text for the vision-impaired. The default value is false. */
  public var isLarge: Bool?

  /** The language of the caption track. The property value is a BCP-47 language tag. */
  public var language: String?

  /** The date and time when the caption track was last updated. */
  public var lastUpdated: Date?

  /** The name of the caption track. The name is intended to be visible to the user as an option during playback. */
  public var name: String?

  /** The caption track's status. */
  public var status: Status?

  /** The caption track's type. */
  public var trackKind: TrackKind?

  /** The ID that YouTube uses to uniquely identify the video associated with the caption track. @mutable youtube.captions.insert */
  public var videoId: String?

  public init(audioTrackType: AudioTrackType? = nil, failureReason: FailureReason? = nil, isAutoSynced: Bool? = nil, isCC: Bool? = nil, isDraft: Bool? = nil, isEasyReader: Bool? = nil, isLarge: Bool? = nil, language: String? = nil, lastUpdated: Date? = nil, name: String? = nil, status: Status? = nil, trackKind: TrackKind? = nil, videoId: String? = nil) {
    self.audioTrackType = audioTrackType
    self.failureReason = failureReason
    self.isAutoSynced = isAutoSynced
    self.isCC = isCC
    self.isDraft = isDraft
    self.isEasyReader = isEasyReader
    self.isLarge = isLarge
    self.language = language
    self.lastUpdated = lastUpdated
    self.name = name
    self.status = status
    self.trackKind = trackKind
    self.videoId = videoId
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    audioTrackType = try container.decodeIfPresent("audioTrackType")
    failureReason = try container.decodeIfPresent("failureReason")
    isAutoSynced = try container.decodeIfPresent("isAutoSynced")
    isCC = try container.decodeIfPresent("isCC")
    isDraft = try container.decodeIfPresent("isDraft")
    isEasyReader = try container.decodeIfPresent("isEasyReader")
    isLarge = try container.decodeIfPresent("isLarge")
    language = try container.decodeIfPresent("language")
    lastUpdated = try container.decodeIfPresent("lastUpdated")
    name = try container.decodeIfPresent("name")
    status = try container.decodeIfPresent("status")
    trackKind = try container.decodeIfPresent("trackKind")
    videoId = try container.decodeIfPresent("videoId")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(audioTrackType, forKey: "audioTrackType")
    try container.encodeIfPresent(failureReason, forKey: "failureReason")
    try container.encodeIfPresent(isAutoSynced, forKey: "isAutoSynced")
    try container.encodeIfPresent(isCC, forKey: "isCC")
    try container.encodeIfPresent(isDraft, forKey: "isDraft")
    try container.encodeIfPresent(isEasyReader, forKey: "isEasyReader")
    try container.encodeIfPresent(isLarge, forKey: "isLarge")
    try container.encodeIfPresent(language, forKey: "language")
    try container.encodeIfPresent(lastUpdated, forKey: "lastUpdated")
    try container.encodeIfPresent(name, forKey: "name")
    try container.encodeIfPresent(status, forKey: "status")
    try container.encodeIfPresent(trackKind, forKey: "trackKind")
    try container.encodeIfPresent(videoId, forKey: "videoId")
  }
}
