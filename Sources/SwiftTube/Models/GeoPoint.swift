import Foundation
import Prch

/** Geographical coordinates of a point, in WGS84. */
public struct GeoPoint: Model {
  /** Altitude above the reference ellipsoid, in meters. */
  public var altitude: Double?

  /** Latitude in degrees. */
  public var latitude: Double?

  /** Longitude in degrees. */
  public var longitude: Double?

  public init(altitude: Double? = nil, latitude: Double? = nil, longitude: Double? = nil) {
    self.altitude = altitude
    self.latitude = latitude
    self.longitude = longitude
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    altitude = try container.decodeIfPresent("altitude")
    latitude = try container.decodeIfPresent("latitude")
    longitude = try container.decodeIfPresent("longitude")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(altitude, forKey: "altitude")
    try container.encodeIfPresent(latitude, forKey: "latitude")
    try container.encodeIfPresent(longitude, forKey: "longitude")
  }
}
