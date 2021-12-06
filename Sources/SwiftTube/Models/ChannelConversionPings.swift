import Foundation
import Prch

/** The conversionPings object encapsulates information about conversion pings that need to be respected by the channel. */
public struct ChannelConversionPings: Model {
  /** Pings that the app shall fire (authenticated by biscotti cookie). Each ping has a context, in which the app must fire the ping, and a url identifying the ping. */
  public var pings: [ChannelConversionPing]?

  public init(pings: [ChannelConversionPing]? = nil) {
    self.pings = pings
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    pings = try container.decodeArrayIfPresent("pings")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(pings, forKey: "pings")
  }
}
