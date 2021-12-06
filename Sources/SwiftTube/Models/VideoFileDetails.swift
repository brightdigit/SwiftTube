import Foundation
import Prch

/** Describes original video file properties, including technical details about audio and video streams, but also metadata information like content length, digitization time, or geotagging information. */
public struct VideoFileDetails: Model {
  /** The uploaded file's type as detected by YouTube's video processing engine. Currently, YouTube only processes video files, but this field is present whether a video file or another type of file was uploaded. */
  public enum FileType: String, Codable, Equatable, CaseIterable {
    case video
    case audio
    case image
    case archive
    case document
    case project
    case other
  }

  /** A list of audio streams contained in the uploaded video file. Each item in the list contains detailed metadata about an audio stream. */
  public var audioStreams: [VideoFileDetailsAudioStream]?

  /** The uploaded video file's combined (video and audio) bitrate in bits per second. */
  public var bitrateBps: String?

  /** The uploaded video file's container format. */
  public var container: String?

  /** The date and time when the uploaded video file was created. The value is specified in ISO 8601 format. Currently, the following ISO 8601 formats are supported: - Date only: YYYY-MM-DD - Naive time: YYYY-MM-DDTHH:MM:SS - Time with timezone: YYYY-MM-DDTHH:MM:SS+HH:MM  */
  public var creationTime: String?

  /** The length of the uploaded video in milliseconds. */
  public var durationMs: String?

  /** The uploaded file's name. This field is present whether a video file or another type of file was uploaded. */
  public var fileName: String?

  /** The uploaded file's size in bytes. This field is present whether a video file or another type of file was uploaded. */
  public var fileSize: String?

  /** The uploaded file's type as detected by YouTube's video processing engine. Currently, YouTube only processes video files, but this field is present whether a video file or another type of file was uploaded. */
  public var fileType: FileType?

  /** A list of video streams contained in the uploaded video file. Each item in the list contains detailed metadata about a video stream. */
  public var videoStreams: [VideoFileDetailsVideoStream]?

  public init(audioStreams: [VideoFileDetailsAudioStream]? = nil, bitrateBps: String? = nil, container: String? = nil, creationTime: String? = nil, durationMs: String? = nil, fileName: String? = nil, fileSize: String? = nil, fileType: FileType? = nil, videoStreams: [VideoFileDetailsVideoStream]? = nil) {
    self.audioStreams = audioStreams
    self.bitrateBps = bitrateBps
    self.container = container
    self.creationTime = creationTime
    self.durationMs = durationMs
    self.fileName = fileName
    self.fileSize = fileSize
    self.fileType = fileType
    self.videoStreams = videoStreams
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    audioStreams = try container.decodeArrayIfPresent("audioStreams")
    bitrateBps = try container.decodeIfPresent("bitrateBps")
    self.container = try container.decodeIfPresent("container")
    creationTime = try container.decodeIfPresent("creationTime")
    durationMs = try container.decodeIfPresent("durationMs")
    fileName = try container.decodeIfPresent("fileName")
    fileSize = try container.decodeIfPresent("fileSize")
    fileType = try container.decodeIfPresent("fileType")
    videoStreams = try container.decodeArrayIfPresent("videoStreams")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(audioStreams, forKey: "audioStreams")
    try container.encodeIfPresent(bitrateBps, forKey: "bitrateBps")
    try container.encodeIfPresent(self.container, forKey: "container")
    try container.encodeIfPresent(creationTime, forKey: "creationTime")
    try container.encodeIfPresent(durationMs, forKey: "durationMs")
    try container.encodeIfPresent(fileName, forKey: "fileName")
    try container.encodeIfPresent(fileSize, forKey: "fileSize")
    try container.encodeIfPresent(fileType, forKey: "fileType")
    try container.encodeIfPresent(videoStreams, forKey: "videoStreams")
  }
}
