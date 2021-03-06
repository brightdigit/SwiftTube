import Foundation
import Prch

/** Describes processing status and progress and availability of some other Video resource parts. */
public struct VideoProcessingDetails: Model {
  /** The reason that YouTube failed to process the video. This property will only have a value if the processingStatus property's value is failed. */
  public enum ProcessingFailureReason: String, Codable, Equatable, CaseIterable {
    case uploadFailed
    case transcodeFailed
    case streamingFailed
    case other
  }

  /** The video's processing status. This value indicates whether YouTube was able to process the video or if the video is still being processed. */
  public enum ProcessingStatus: String, Codable, Equatable, CaseIterable {
    case processing
    case succeeded
    case failed
    case terminated
  }

  /** This value indicates whether video editing suggestions, which might improve video quality or the playback experience, are available for the video. You can retrieve these suggestions by requesting the suggestions part in your videos.list() request. */
  public var editorSuggestionsAvailability: String?

  /** This value indicates whether file details are available for the uploaded video. You can retrieve a video's file details by requesting the fileDetails part in your videos.list() request. */
  public var fileDetailsAvailability: String?

  /** The reason that YouTube failed to process the video. This property will only have a value if the processingStatus property's value is failed. */
  public var processingFailureReason: ProcessingFailureReason?

  /** This value indicates whether the video processing engine has generated suggestions that might improve YouTube's ability to process the the video, warnings that explain video processing problems, or errors that cause video processing problems. You can retrieve these suggestions by requesting the suggestions part in your videos.list() request. */
  public var processingIssuesAvailability: String?

  /** The processingProgress object contains information about the progress YouTube has made in processing the video. The values are really only relevant if the video's processing status is processing. */
  public var processingProgress: VideoProcessingDetailsProcessingProgress?

  /** The video's processing status. This value indicates whether YouTube was able to process the video or if the video is still being processed. */
  public var processingStatus: ProcessingStatus?

  /** This value indicates whether keyword (tag) suggestions are available for the video. Tags can be added to a video's metadata to make it easier for other users to find the video. You can retrieve these suggestions by requesting the suggestions part in your videos.list() request. */
  public var tagSuggestionsAvailability: String?

  /** This value indicates whether thumbnail images have been generated for the video. */
  public var thumbnailsAvailability: String?

  public init(editorSuggestionsAvailability: String? = nil, fileDetailsAvailability: String? = nil, processingFailureReason: ProcessingFailureReason? = nil, processingIssuesAvailability: String? = nil, processingProgress: VideoProcessingDetailsProcessingProgress? = nil, processingStatus: ProcessingStatus? = nil, tagSuggestionsAvailability: String? = nil, thumbnailsAvailability: String? = nil) {
    self.editorSuggestionsAvailability = editorSuggestionsAvailability
    self.fileDetailsAvailability = fileDetailsAvailability
    self.processingFailureReason = processingFailureReason
    self.processingIssuesAvailability = processingIssuesAvailability
    self.processingProgress = processingProgress
    self.processingStatus = processingStatus
    self.tagSuggestionsAvailability = tagSuggestionsAvailability
    self.thumbnailsAvailability = thumbnailsAvailability
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    editorSuggestionsAvailability = try container.decodeIfPresent("editorSuggestionsAvailability")
    fileDetailsAvailability = try container.decodeIfPresent("fileDetailsAvailability")
    processingFailureReason = try container.decodeIfPresent("processingFailureReason")
    processingIssuesAvailability = try container.decodeIfPresent("processingIssuesAvailability")
    processingProgress = try container.decodeIfPresent("processingProgress")
    processingStatus = try container.decodeIfPresent("processingStatus")
    tagSuggestionsAvailability = try container.decodeIfPresent("tagSuggestionsAvailability")
    thumbnailsAvailability = try container.decodeIfPresent("thumbnailsAvailability")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(editorSuggestionsAvailability, forKey: "editorSuggestionsAvailability")
    try container.encodeIfPresent(fileDetailsAvailability, forKey: "fileDetailsAvailability")
    try container.encodeIfPresent(processingFailureReason, forKey: "processingFailureReason")
    try container.encodeIfPresent(processingIssuesAvailability, forKey: "processingIssuesAvailability")
    try container.encodeIfPresent(processingProgress, forKey: "processingProgress")
    try container.encodeIfPresent(processingStatus, forKey: "processingStatus")
    try container.encodeIfPresent(tagSuggestionsAvailability, forKey: "tagSuggestionsAvailability")
    try container.encodeIfPresent(thumbnailsAvailability, forKey: "thumbnailsAvailability")
  }
}
