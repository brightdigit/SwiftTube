import Foundation
import Prch

/** Describes information necessary for ingesting an RTMP or an HTTP stream. */
public struct IngestionInfo: Model {
  /** The backup ingestion URL that you should use to stream video to YouTube. You have the option of simultaneously streaming the content that you are sending to the ingestionAddress to this URL. */
  public var backupIngestionAddress: String?

  /** The primary ingestion URL that you should use to stream video to YouTube. You must stream video to this URL. Depending on which application or tool you use to encode your video stream, you may need to enter the stream URL and stream name separately or you may need to concatenate them in the following format: *STREAM_URL/STREAM_NAME*  */
  public var ingestionAddress: String?

  /** This ingestion url may be used instead of backupIngestionAddress in order to stream via RTMPS. Not applicable to non-RTMP streams. */
  public var rtmpsBackupIngestionAddress: String?

  /** This ingestion url may be used instead of ingestionAddress in order to stream via RTMPS. Not applicable to non-RTMP streams. */
  public var rtmpsIngestionAddress: String?

  /** The HTTP or RTMP stream name that YouTube assigns to the video stream. */
  public var streamName: String?

  public init(backupIngestionAddress: String? = nil, ingestionAddress: String? = nil, rtmpsBackupIngestionAddress: String? = nil, rtmpsIngestionAddress: String? = nil, streamName: String? = nil) {
    self.backupIngestionAddress = backupIngestionAddress
    self.ingestionAddress = ingestionAddress
    self.rtmpsBackupIngestionAddress = rtmpsBackupIngestionAddress
    self.rtmpsIngestionAddress = rtmpsIngestionAddress
    self.streamName = streamName
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    backupIngestionAddress = try container.decodeIfPresent("backupIngestionAddress")
    ingestionAddress = try container.decodeIfPresent("ingestionAddress")
    rtmpsBackupIngestionAddress = try container.decodeIfPresent("rtmpsBackupIngestionAddress")
    rtmpsIngestionAddress = try container.decodeIfPresent("rtmpsIngestionAddress")
    streamName = try container.decodeIfPresent("streamName")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(backupIngestionAddress, forKey: "backupIngestionAddress")
    try container.encodeIfPresent(ingestionAddress, forKey: "ingestionAddress")
    try container.encodeIfPresent(rtmpsBackupIngestionAddress, forKey: "rtmpsBackupIngestionAddress")
    try container.encodeIfPresent(rtmpsIngestionAddress, forKey: "rtmpsIngestionAddress")
    try container.encodeIfPresent(streamName, forKey: "streamName")
  }
}
