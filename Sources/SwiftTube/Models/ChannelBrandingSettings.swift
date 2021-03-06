import Foundation
import Prch

/** Branding properties of a YouTube channel. */
public struct ChannelBrandingSettings: Model {
  /** Branding properties for the channel view. */
  public var channel: ChannelSettings?

  /** Additional experimental branding properties. */
  public var hints: [PropertyValue]?

  /** Branding properties for branding images. */
  public var image: ImageSettings?

  /** Branding properties for the watch page. */
  public var watch: WatchSettings?

  public init(channel: ChannelSettings? = nil, hints: [PropertyValue]? = nil, image: ImageSettings? = nil, watch: WatchSettings? = nil) {
    self.channel = channel
    self.hints = hints
    self.image = image
    self.watch = watch
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    channel = try container.decodeIfPresent("channel")
    hints = try container.decodeArrayIfPresent("hints")
    image = try container.decodeIfPresent("image")
    watch = try container.decodeIfPresent("watch")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(channel, forKey: "channel")
    try container.encodeIfPresent(hints, forKey: "hints")
    try container.encodeIfPresent(image, forKey: "image")
    try container.encodeIfPresent(watch, forKey: "watch")
  }
}
