import Foundation
import Prch

public struct PlaylistItemContentDetails: Model {
  /** The time, measured in seconds from the start of the video, when the video should stop playing. (The playlist owner can specify the times when the video should start and stop playing when the video is played in the context of the playlist.) By default, assume that the video.endTime is the end of the video. */
  public var endAt: String?

  /** A user-generated note for this item. */
  public var note: String?

  /** The time, measured in seconds from the start of the video, when the video should start playing. (The playlist owner can specify the times when the video should start and stop playing when the video is played in the context of the playlist.) The default value is 0. */
  public var startAt: String?

  /** The ID that YouTube uses to uniquely identify a video. To retrieve the video resource, set the id query parameter to this value in your API request. */
  public var videoId: String?

  /** The date and time that the video was published to YouTube. */
  public var videoPublishedAt: DateTime?

  public init(endAt: String? = nil, note: String? = nil, startAt: String? = nil, videoId: String? = nil, videoPublishedAt: DateTime? = nil) {
    self.endAt = endAt
    self.note = note
    self.startAt = startAt
    self.videoId = videoId
    self.videoPublishedAt = videoPublishedAt
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    endAt = try container.decodeIfPresent("endAt")
    note = try container.decodeIfPresent("note")
    startAt = try container.decodeIfPresent("startAt")
    videoId = try container.decodeIfPresent("videoId")
    videoPublishedAt = try container.decodeIfPresent("videoPublishedAt")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(endAt, forKey: "endAt")
    try container.encodeIfPresent(note, forKey: "note")
    try container.encodeIfPresent(startAt, forKey: "startAt")
    try container.encodeIfPresent(videoId, forKey: "videoId")
    try container.encodeIfPresent(videoPublishedAt, forKey: "videoPublishedAt")
  }
}
