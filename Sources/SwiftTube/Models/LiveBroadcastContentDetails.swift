import Foundation
import Prch

/** Detailed settings of a broadcast. */
public struct LiveBroadcastContentDetails: Model {
  /** Detailed settings of a broadcast. */
  public enum ClosedCaptionsType: String, Codable, Equatable, CaseIterable {
    case closedCaptionsTypeUnspecified
    case closedCaptionsDisabled
    case closedCaptionsHttpPost
    case closedCaptionsEmbedded
  }

  /** If both this and enable_low_latency are set, they must match. LATENCY_NORMAL should match enable_low_latency=false LATENCY_LOW should match enable_low_latency=true LATENCY_ULTRA_LOW should have enable_low_latency omitted. */
  public enum LatencyPreference: String, Codable, Equatable, CaseIterable {
    case latencyPreferenceUnspecified
    case normal
    case low
    case ultraLow
  }

  /** The projection format of this broadcast. This defaults to rectangular. */
  public enum Projection: String, Codable, Equatable, CaseIterable {
    case projectionUnspecified
    case rectangular
    case VR360 = "360"
    case mesh
  }

  /** The 3D stereo layout of this broadcast. This defaults to mono. */
  public enum StereoLayout: String, Codable, Equatable, CaseIterable {
    case stereoLayoutUnspecified
    case mono
    case leftRight
    case topBottom
  }

  /** This value uniquely identifies the live stream bound to the broadcast. */
  public var boundStreamId: String?

  /** The date and time that the live stream referenced by boundStreamId was last updated. */
  public var boundStreamLastUpDateMs: Date?

  public var closedCaptionsType: ClosedCaptionsType?

  /** This setting indicates whether auto start is enabled for this broadcast. The default value for this property is false. This setting can only be used by Events. */
  public var enableAutoStart: Bool?

  /** This setting indicates whether auto stop is enabled for this broadcast. The default value for this property is false. This setting can only be used by Events. */
  public var enableAutoStop: Bool?

  /** This setting indicates whether HTTP POST closed captioning is enabled for this broadcast. The ingestion URL of the closed captions is returned through the liveStreams API. This is mutually exclusive with using the closed_captions_type property, and is equivalent to setting closed_captions_type to CLOSED_CAPTIONS_HTTP_POST. */
  public var enableClosedCaptions: Bool?

  /** This setting indicates whether YouTube should enable content encryption for the broadcast. */
  public var enableContentEncryption: Bool?

  /** This setting determines whether viewers can access DVR controls while watching the video. DVR controls enable the viewer to control the video playback experience by pausing, rewinding, or fast forwarding content. The default value for this property is true. *Important:* You must set the value to true and also set the enableArchive property's value to true if you want to make playback available immediately after the broadcast ends. */
  public var enableDvr: Bool?

  /** This setting indicates whether the broadcast video can be played in an embedded player. If you choose to archive the video (using the enableArchive property), this setting will also apply to the archived video. */
  public var enableEmbed: Bool?

  /** Indicates whether this broadcast has low latency enabled. */
  public var enableLowLatency: Bool?

  /** If both this and enable_low_latency are set, they must match. LATENCY_NORMAL should match enable_low_latency=false LATENCY_LOW should match enable_low_latency=true LATENCY_ULTRA_LOW should have enable_low_latency omitted. */
  public var latencyPreference: LatencyPreference?

  /** The mesh for projecting the video if projection is mesh. The mesh value must be a UTF-8 string containing the base-64 encoding of 3D mesh data that follows the Spherical Video V2 RFC specification for an mshp box, excluding the box size and type but including the following four reserved zero bytes for the version and flags. */
  public var mesh: File?

  /** The monitorStream object contains information about the monitor stream, which the broadcaster can use to review the event content before the broadcast stream is shown publicly. */
  public var monitorStream: MonitorStreamInfo?

  /** The projection format of this broadcast. This defaults to rectangular. */
  public var projection: Projection?

  /** Automatically start recording after the event goes live. The default value for this property is true. *Important:* You must also set the enableDvr property's value to true if you want the playback to be available immediately after the broadcast ends. If you set this property's value to true but do not also set the enableDvr property to true, there may be a delay of around one day before the archived video will be available for playback. */
  public var recordFromStart: Bool?

  /** This setting indicates whether the broadcast should automatically begin with an in-stream slate when you update the broadcast's status to live. After updating the status, you then need to send a liveCuepoints.insert request that sets the cuepoint's eventState to end to remove the in-stream slate and make your broadcast stream visible to viewers. */
  public var startWithSlate: Bool?

  /** The 3D stereo layout of this broadcast. This defaults to mono. */
  public var stereoLayout: StereoLayout?

  public init(boundStreamId: String? = nil, boundStreamLastUpDateMs: Date? = nil, closedCaptionsType: ClosedCaptionsType? = nil, enableAutoStart: Bool? = nil, enableAutoStop: Bool? = nil, enableClosedCaptions: Bool? = nil, enableContentEncryption: Bool? = nil, enableDvr: Bool? = nil, enableEmbed: Bool? = nil, enableLowLatency: Bool? = nil, latencyPreference: LatencyPreference? = nil, mesh: File? = nil, monitorStream: MonitorStreamInfo? = nil, projection: Projection? = nil, recordFromStart: Bool? = nil, startWithSlate: Bool? = nil, stereoLayout: StereoLayout? = nil) {
    self.boundStreamId = boundStreamId
    self.boundStreamLastUpDateMs = boundStreamLastUpDateMs
    self.closedCaptionsType = closedCaptionsType
    self.enableAutoStart = enableAutoStart
    self.enableAutoStop = enableAutoStop
    self.enableClosedCaptions = enableClosedCaptions
    self.enableContentEncryption = enableContentEncryption
    self.enableDvr = enableDvr
    self.enableEmbed = enableEmbed
    self.enableLowLatency = enableLowLatency
    self.latencyPreference = latencyPreference
    self.mesh = mesh
    self.monitorStream = monitorStream
    self.projection = projection
    self.recordFromStart = recordFromStart
    self.startWithSlate = startWithSlate
    self.stereoLayout = stereoLayout
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    boundStreamId = try container.decodeIfPresent("boundStreamId")
    boundStreamLastUpDateMs = try container.decodeIfPresent("boundStreamLastUpDateMs")
    closedCaptionsType = try container.decodeIfPresent("closedCaptionsType")
    enableAutoStart = try container.decodeIfPresent("enableAutoStart")
    enableAutoStop = try container.decodeIfPresent("enableAutoStop")
    enableClosedCaptions = try container.decodeIfPresent("enableClosedCaptions")
    enableContentEncryption = try container.decodeIfPresent("enableContentEncryption")
    enableDvr = try container.decodeIfPresent("enableDvr")
    enableEmbed = try container.decodeIfPresent("enableEmbed")
    enableLowLatency = try container.decodeIfPresent("enableLowLatency")
    latencyPreference = try container.decodeIfPresent("latencyPreference")
    mesh = try container.decodeIfPresent("mesh")
    monitorStream = try container.decodeIfPresent("monitorStream")
    projection = try container.decodeIfPresent("projection")
    recordFromStart = try container.decodeIfPresent("recordFromStart")
    startWithSlate = try container.decodeIfPresent("startWithSlate")
    stereoLayout = try container.decodeIfPresent("stereoLayout")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(boundStreamId, forKey: "boundStreamId")
    try container.encodeIfPresent(boundStreamLastUpDateMs, forKey: "boundStreamLastUpDateMs")
    try container.encodeIfPresent(closedCaptionsType, forKey: "closedCaptionsType")
    try container.encodeIfPresent(enableAutoStart, forKey: "enableAutoStart")
    try container.encodeIfPresent(enableAutoStop, forKey: "enableAutoStop")
    try container.encodeIfPresent(enableClosedCaptions, forKey: "enableClosedCaptions")
    try container.encodeIfPresent(enableContentEncryption, forKey: "enableContentEncryption")
    try container.encodeIfPresent(enableDvr, forKey: "enableDvr")
    try container.encodeIfPresent(enableEmbed, forKey: "enableEmbed")
    try container.encodeIfPresent(enableLowLatency, forKey: "enableLowLatency")
    try container.encodeIfPresent(latencyPreference, forKey: "latencyPreference")
    try container.encodeIfPresent(mesh, forKey: "mesh")
    try container.encodeIfPresent(monitorStream, forKey: "monitorStream")
    try container.encodeIfPresent(projection, forKey: "projection")
    try container.encodeIfPresent(recordFromStart, forKey: "recordFromStart")
    try container.encodeIfPresent(startWithSlate, forKey: "startWithSlate")
    try container.encodeIfPresent(stereoLayout, forKey: "stereoLayout")
  }
}
