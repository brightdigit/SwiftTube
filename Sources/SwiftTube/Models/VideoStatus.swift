import Foundation
import Prch

/** Basic details about a video category, such as its localized title. Next Id: 17 */
public struct VideoStatus: Model {
  /** This value explains why a video failed to upload. This property is only present if the uploadStatus property indicates that the upload failed. */
  public enum FailureReason: String, Codable, Equatable, CaseIterable {
    case conversion
    case invalidFile
    case emptyFile
    case tooSmall
    case codec
    case uploadAborted
  }

  /** The video's license. @mutable youtube.videos.insert youtube.videos.update */
  public enum License: String, Codable, Equatable, CaseIterable {
    case youtube
    case creativeCommon
  }

  /** The video's privacy status. */
  public enum PrivacyStatus: String, Codable, Equatable, CaseIterable {
    case `public`
    case unlisted
    case `private`
  }

  /** This value explains why YouTube rejected an uploaded video. This property is only present if the uploadStatus property indicates that the upload was rejected. */
  public enum RejectionReason: String, Codable, Equatable, CaseIterable {
    case copyright
    case inappropriate
    case duplicate
    case termsOfUse
    case uploaderAccountSuspended
    case length
    case claim
    case uploaderAccountClosed
    case trademark
    case legal
  }

  /** The status of the uploaded video. */
  public enum UploadStatus: String, Codable, Equatable, CaseIterable {
    case uploaded
    case processed
    case failed
    case rejected
    case deleted
  }

  /** This value indicates if the video can be embedded on another website. @mutable youtube.videos.insert youtube.videos.update */
  public var embeddable: Bool?

  /** This value explains why a video failed to upload. This property is only present if the uploadStatus property indicates that the upload failed. */
  public var failureReason: FailureReason?

  /** The video's license. @mutable youtube.videos.insert youtube.videos.update */
  public var license: License?

  public var madeForKids: Bool?

  /** The video's privacy status. */
  public var privacyStatus: PrivacyStatus?

  /** This value indicates if the extended video statistics on the watch page can be viewed by everyone. Note that the view count, likes, etc will still be visible if this is disabled. @mutable youtube.videos.insert youtube.videos.update */
  public var publicStatsViewable: Bool?

  /** The date and time when the video is scheduled to publish. It can be set only if the privacy status of the video is private.. */
  public var publishAt: Date?

  /** This value explains why YouTube rejected an uploaded video. This property is only present if the uploadStatus property indicates that the upload was rejected. */
  public var rejectionReason: RejectionReason?

  public var selfDeclaredMadeForKids: Bool?

  /** The status of the uploaded video. */
  public var uploadStatus: UploadStatus?

  public init(embeddable: Bool? = nil, failureReason: FailureReason? = nil, license: License? = nil, madeForKids: Bool? = nil, privacyStatus: PrivacyStatus? = nil, publicStatsViewable: Bool? = nil, publishAt: Date? = nil, rejectionReason: RejectionReason? = nil, selfDeclaredMadeForKids: Bool? = nil, uploadStatus: UploadStatus? = nil) {
    self.embeddable = embeddable
    self.failureReason = failureReason
    self.license = license
    self.madeForKids = madeForKids
    self.privacyStatus = privacyStatus
    self.publicStatsViewable = publicStatsViewable
    self.publishAt = publishAt
    self.rejectionReason = rejectionReason
    self.selfDeclaredMadeForKids = selfDeclaredMadeForKids
    self.uploadStatus = uploadStatus
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    embeddable = try container.decodeIfPresent("embeddable")
    failureReason = try container.decodeIfPresent("failureReason")
    license = try container.decodeIfPresent("license")
    madeForKids = try container.decodeIfPresent("madeForKids")
    privacyStatus = try container.decodeIfPresent("privacyStatus")
    publicStatsViewable = try container.decodeIfPresent("publicStatsViewable")
    publishAt = try container.decodeIfPresent("publishAt")
    rejectionReason = try container.decodeIfPresent("rejectionReason")
    selfDeclaredMadeForKids = try container.decodeIfPresent("selfDeclaredMadeForKids")
    uploadStatus = try container.decodeIfPresent("uploadStatus")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(embeddable, forKey: "embeddable")
    try container.encodeIfPresent(failureReason, forKey: "failureReason")
    try container.encodeIfPresent(license, forKey: "license")
    try container.encodeIfPresent(madeForKids, forKey: "madeForKids")
    try container.encodeIfPresent(privacyStatus, forKey: "privacyStatus")
    try container.encodeIfPresent(publicStatsViewable, forKey: "publicStatsViewable")
    try container.encodeIfPresent(publishAt, forKey: "publishAt")
    try container.encodeIfPresent(rejectionReason, forKey: "rejectionReason")
    try container.encodeIfPresent(selfDeclaredMadeForKids, forKey: "selfDeclaredMadeForKids")
    try container.encodeIfPresent(uploadStatus, forKey: "uploadStatus")
  }
}
