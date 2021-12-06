import Foundation
import Prch

/** Pings that the app shall fire (authenticated by biscotti cookie). Each ping has a context, in which the app must fire the ping, and a url identifying the ping. */
public struct ChannelConversionPing: Model {
  /** Defines the context of the ping. */
  public enum Context: String, Codable, Equatable, CaseIterable {
    case subscribe
    case unsubscribe
    case cview
  }

  /** Defines the context of the ping. */
  public var context: Context?

  /** The url (without the schema) that the player shall send the ping to. It's at caller's descretion to decide which schema to use (http vs https) Example of a returned url: //googleads.g.doubleclick.net/pagead/ viewthroughconversion/962985656/?data=path%3DtHe_path%3Btype%3D cview%3Butuid%3DGISQtTNGYqaYl4sKxoVvKA&labe=default The caller must append biscotti authentication (ms param in case of mobile, for example) to this ping. */
  public var conversionUrl: String?

  public init(context: Context? = nil, conversionUrl: String? = nil) {
    self.context = context
    self.conversionUrl = conversionUrl
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    context = try container.decodeIfPresent("context")
    conversionUrl = try container.decodeIfPresent("conversionUrl")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(context, forKey: "context")
    try container.encodeIfPresent(conversionUrl, forKey: "conversionUrl")
  }
}
