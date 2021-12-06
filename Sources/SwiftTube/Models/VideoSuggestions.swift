import Foundation
import Prch

/** Specifies suggestions on how to improve video content, including encoding hints, tag suggestions, and editor suggestions. */
public struct VideoSuggestions: Model {
  /** A list of video editing operations that might improve the video quality or playback experience of the uploaded video. */
  public enum EditorSuggestions: String, Codable, Equatable, CaseIterable {
    case videoAutoLevels
    case videoStabilize
    case videoCrop
    case audioQuietAudioSwap
  }

  /** A list of errors that will prevent YouTube from successfully processing the uploaded video video. These errors indicate that, regardless of the video's current processing status, eventually, that status will almost certainly be failed. */
  public enum ProcessingErrors: String, Codable, Equatable, CaseIterable {
    case audioFile
    case imageFile
    case projectFile
    case notAVideoFile
    case docFile
    case archiveFile
    case unsupportedSpatialAudioLayout
  }

  /** A list of suggestions that may improve YouTube's ability to process the video. */
  public enum ProcessingHints: String, Codable, Equatable, CaseIterable {
    case nonStreamableMov
    case sendBestQualityVideo
    case sphericalVideo
    case spatialAudio
    case vrVideo
    case hdrVideo
  }

  /** A list of reasons why YouTube may have difficulty transcoding the uploaded video or that might result in an erroneous transcoding. These warnings are generated before YouTube actually processes the uploaded video file. In addition, they identify issues that are unlikely to cause the video processing to fail but that might cause problems such as sync issues, video artifacts, or a missing audio track. */
  public enum ProcessingWarnings: String, Codable, Equatable, CaseIterable {
    case unknownContainer
    case unknownVideoCodec
    case unknownAudioCodec
    case inconsistentResolution
    case hasEditlist
    case problematicVideoCodec
    case problematicAudioCodec
    case unsupportedVrStereoMode
    case unsupportedSphericalProjectionType
    case unsupportedHdrPixelFormat
    case unsupportedHdrColorMetadata
    case problematicHdrLookupTable
  }

  /** A list of video editing operations that might improve the video quality or playback experience of the uploaded video. */
  public var editorSuggestions: [EditorSuggestions]?

  /** A list of errors that will prevent YouTube from successfully processing the uploaded video video. These errors indicate that, regardless of the video's current processing status, eventually, that status will almost certainly be failed. */
  public var processingErrors: [ProcessingErrors]?

  /** A list of suggestions that may improve YouTube's ability to process the video. */
  public var processingHints: [ProcessingHints]?

  /** A list of reasons why YouTube may have difficulty transcoding the uploaded video or that might result in an erroneous transcoding. These warnings are generated before YouTube actually processes the uploaded video file. In addition, they identify issues that are unlikely to cause the video processing to fail but that might cause problems such as sync issues, video artifacts, or a missing audio track. */
  public var processingWarnings: [ProcessingWarnings]?

  /** A list of keyword tags that could be added to the video's metadata to increase the likelihood that users will locate your video when searching or browsing on YouTube. */
  public var tagSuggestions: [VideoSuggestionsTagSuggestion]?

  public init(editorSuggestions: [EditorSuggestions]? = nil, processingErrors: [ProcessingErrors]? = nil, processingHints: [ProcessingHints]? = nil, processingWarnings: [ProcessingWarnings]? = nil, tagSuggestions: [VideoSuggestionsTagSuggestion]? = nil) {
    self.editorSuggestions = editorSuggestions
    self.processingErrors = processingErrors
    self.processingHints = processingHints
    self.processingWarnings = processingWarnings
    self.tagSuggestions = tagSuggestions
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    editorSuggestions = try container.decodeArrayIfPresent("editorSuggestions")
    processingErrors = try container.decodeArrayIfPresent("processingErrors")
    processingHints = try container.decodeArrayIfPresent("processingHints")
    processingWarnings = try container.decodeArrayIfPresent("processingWarnings")
    tagSuggestions = try container.decodeArrayIfPresent("tagSuggestions")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(editorSuggestions, forKey: "editorSuggestions")
    try container.encodeIfPresent(processingErrors, forKey: "processingErrors")
    try container.encodeIfPresent(processingHints, forKey: "processingHints")
    try container.encodeIfPresent(processingWarnings, forKey: "processingWarnings")
    try container.encodeIfPresent(tagSuggestions, forKey: "tagSuggestions")
  }
}
