import Foundation
import Prch

/** Recording information associated with the video. */
public struct VideoRecordingDetails: Model {
  /** The geolocation information associated with the video. */
  public var location: GeoPoint?

  /** The text description of the location where the video was recorded. */
  public var locationDescription: String?

  /** The date and time when the video was recorded. */
  public var recordingDate: Date?

  public init(location: GeoPoint? = nil, locationDescription: String? = nil, recordingDate: Date? = nil) {
    self.location = location
    self.locationDescription = locationDescription
    self.recordingDate = recordingDate
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    location = try container.decodeIfPresent("location")
    locationDescription = try container.decodeIfPresent("locationDescription")
    recordingDate = try container.decodeIfPresent("recordingDate")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(location, forKey: "location")
    try container.encodeIfPresent(locationDescription, forKey: "locationDescription")
    try container.encodeIfPresent(recordingDate, forKey: "recordingDate")
  }
}
