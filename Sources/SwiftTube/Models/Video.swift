import Foundation
import Prch

/** A *video* resource represents a YouTube video. */
public struct Video: Model {
  /** Age restriction details related to a video. This data can only be retrieved by the video owner. */
  public var ageGating: VideoAgeGating?

  /** The contentDetails object contains information about the video content, including the length of the video and its aspect ratio. */
  public var contentDetails: VideoContentDetails?

  /** Etag of this resource. */
  public var etag: String?

  /** The fileDetails object encapsulates information about the video file that was uploaded to YouTube, including the file's resolution, duration, audio and video codecs, stream bitrates, and more. This data can only be retrieved by the video owner. */
  public var fileDetails: VideoFileDetails?

  /** The ID that YouTube uses to uniquely identify the video. */
  public var id: String?

  /** Identifies what kind of resource this is. Value: the fixed string "youtube#video". */
  public var kind: String?

  /** The liveStreamingDetails object contains metadata about a live video broadcast. The object will only be present in a video resource if the video is an upcoming, live, or completed live broadcast. */
  public var liveStreamingDetails: VideoLiveStreamingDetails?

  /** The localizations object contains localized versions of the basic details about the video, such as its title and description. */
  public var localizations: [String: VideoLocalization]?

  /** The monetizationDetails object encapsulates information about the monetization status of the video. */
  public var monetizationDetails: VideoMonetizationDetails?

  /** The player object contains information that you would use to play the video in an embedded player. */
  public var player: VideoPlayer?

  /** The processingDetails object encapsulates information about YouTube's progress in processing the uploaded video file. The properties in the object identify the current processing status and an estimate of the time remaining until YouTube finishes processing the video. This part also indicates whether different types of data or content, such as file details or thumbnail images, are available for the video. The processingProgress object is designed to be polled so that the video uploaded can track the progress that YouTube has made in processing the uploaded video file. This data can only be retrieved by the video owner. */
  public var processingDetails: VideoProcessingDetails?

  /** The projectDetails object contains information about the project specific video metadata. b/157517979: This part was never populated after it was added. However, it sees non-zero traffic because there is generated client code in the wild that refers to it [1]. We keep this field and do NOT remove it because otherwise V3 would return an error when this part gets requested [2]. [1] https://developers.google.com/resources/api-libraries/documentation/youtube/v3/csharp/latest/classGoogle_1_1Apis_1_1YouTube_1_1v3_1_1Data_1_1VideoProjectDetails.html [2] http://google3/video/youtube/src/python/servers/data_api/common.py?l=1565-1569&rcl=344141677 */
  public var projectDetails: VideoProjectDetails?

  /** The recordingDetails object encapsulates information about the location, date and address where the video was recorded. */
  public var recordingDetails: VideoRecordingDetails?

  /** The snippet object contains basic details about the video, such as its title, description, and category. */
  public var snippet: VideoSnippet?

  /** The statistics object contains statistics about the video. */
  public var statistics: VideoStatistics?

  /** The status object contains information about the video's uploading, processing, and privacy statuses. */
  public var status: VideoStatus?

  /** The suggestions object encapsulates suggestions that identify opportunities to improve the video quality or the metadata for the uploaded video. This data can only be retrieved by the video owner. */
  public var suggestions: VideoSuggestions?

  /** The topicDetails object encapsulates information about Freebase topics associated with the video. */
  public var topicDetails: VideoTopicDetails?

  public init(ageGating: VideoAgeGating? = nil, contentDetails: VideoContentDetails? = nil, etag: String? = nil, fileDetails: VideoFileDetails? = nil, id: String? = nil, kind: String? = nil, liveStreamingDetails: VideoLiveStreamingDetails? = nil, localizations: [String: VideoLocalization]? = nil, monetizationDetails: VideoMonetizationDetails? = nil, player: VideoPlayer? = nil, processingDetails: VideoProcessingDetails? = nil, projectDetails: VideoProjectDetails? = nil, recordingDetails: VideoRecordingDetails? = nil, snippet: VideoSnippet? = nil, statistics: VideoStatistics? = nil, status: VideoStatus? = nil, suggestions: VideoSuggestions? = nil, topicDetails: VideoTopicDetails? = nil) {
    self.ageGating = ageGating
    self.contentDetails = contentDetails
    self.etag = etag
    self.fileDetails = fileDetails
    self.id = id
    self.kind = kind
    self.liveStreamingDetails = liveStreamingDetails
    self.localizations = localizations
    self.monetizationDetails = monetizationDetails
    self.player = player
    self.processingDetails = processingDetails
    self.projectDetails = projectDetails
    self.recordingDetails = recordingDetails
    self.snippet = snippet
    self.statistics = statistics
    self.status = status
    self.suggestions = suggestions
    self.topicDetails = topicDetails
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    ageGating = try container.decodeIfPresent("ageGating")
    contentDetails = try container.decodeIfPresent("contentDetails")
    etag = try container.decodeIfPresent("etag")
    fileDetails = try container.decodeIfPresent("fileDetails")
    id = try container.decodeIfPresent("id")
    kind = try container.decodeIfPresent("kind")
    liveStreamingDetails = try container.decodeIfPresent("liveStreamingDetails")
    localizations = try container.decodeIfPresent("localizations")
    monetizationDetails = try container.decodeIfPresent("monetizationDetails")
    player = try container.decodeIfPresent("player")
    processingDetails = try container.decodeIfPresent("processingDetails")
    projectDetails = try container.decodeIfPresent("projectDetails")
    recordingDetails = try container.decodeIfPresent("recordingDetails")
    snippet = try container.decodeIfPresent("snippet")
    statistics = try container.decodeIfPresent("statistics")
    status = try container.decodeIfPresent("status")
    suggestions = try container.decodeIfPresent("suggestions")
    topicDetails = try container.decodeIfPresent("topicDetails")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(ageGating, forKey: "ageGating")
    try container.encodeIfPresent(contentDetails, forKey: "contentDetails")
    try container.encodeIfPresent(etag, forKey: "etag")
    try container.encodeIfPresent(fileDetails, forKey: "fileDetails")
    try container.encodeIfPresent(id, forKey: "id")
    try container.encodeIfPresent(kind, forKey: "kind")
    try container.encodeIfPresent(liveStreamingDetails, forKey: "liveStreamingDetails")
    try container.encodeIfPresent(localizations, forKey: "localizations")
    try container.encodeIfPresent(monetizationDetails, forKey: "monetizationDetails")
    try container.encodeIfPresent(player, forKey: "player")
    try container.encodeIfPresent(processingDetails, forKey: "processingDetails")
    try container.encodeIfPresent(projectDetails, forKey: "projectDetails")
    try container.encodeIfPresent(recordingDetails, forKey: "recordingDetails")
    try container.encodeIfPresent(snippet, forKey: "snippet")
    try container.encodeIfPresent(statistics, forKey: "statistics")
    try container.encodeIfPresent(status, forKey: "status")
    try container.encodeIfPresent(suggestions, forKey: "suggestions")
    try container.encodeIfPresent(topicDetails, forKey: "topicDetails")
  }
}
