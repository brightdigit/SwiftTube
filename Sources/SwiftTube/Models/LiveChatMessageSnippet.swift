import Foundation
import Prch

/** Next ID: 31 */
public struct LiveChatMessageSnippet: Model {
  /** The type of message, this will always be present, it determines the contents of the message as well as which fields will be present. */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case invalidType
    case textMessageEvent
    case tombstone
    case fanFundingEvent
    case chatEndedEvent
    case sponsorOnlyModeStartedEvent
    case sponsorOnlyModeEndedEvent
    case newSponsorEvent
    case memberMilestoneChatEvent
    case messageDeletedEvent
    case messageRetractedEvent
    case userBannedEvent
    case superChatEvent
    case superStickerEvent
  }

  /** The ID of the user that authored this message, this field is not always filled. textMessageEvent - the user that wrote the message fanFundingEvent - the user that funded the broadcast newSponsorEvent - the user that just became a sponsor memberMilestoneChatEvent - the member that sent the message messageDeletedEvent - the moderator that took the action messageRetractedEvent - the author that retracted their message userBannedEvent - the moderator that took the action superChatEvent - the user that made the purchase superStickerEvent - the user that made the purchase */
  public var authorChannelId: String?

  /** Contains a string that can be displayed to the user. If this field is not present the message is silent, at the moment only messages of type TOMBSTONE and CHAT_ENDED_EVENT are silent. */
  public var displayMessage: String?

  /** Details about the funding event, this is only set if the type is 'fanFundingEvent'. */
  public var fanFundingEventDetails: LiveChatFanFundingEventDetails?

  /** Whether the message has display content that should be displayed to users. */
  public var hasDisplayContent: Bool?

  public var liveChatId: String?

  /** Details about the Member Milestone Chat event, this is only set if the type is 'memberMilestoneChatEvent'. */
  public var memberMilestoneChatDetails: LiveChatMemberMilestoneChatDetails?

  public var messageDeletedDetails: LiveChatMessageDeletedDetails?

  public var messageRetractedDetails: LiveChatMessageRetractedDetails?

  /** Details about the New Member Announcement event, this is only set if the type is 'newSponsorEvent'. Please note that "member" is the new term for "sponsor". */
  public var newSponsorDetails: LiveChatNewSponsorDetails?

  /** The date and time when the message was orignally published. */
  public var publishedAt: Date?

  /** Details about the Super Chat event, this is only set if the type is 'superChatEvent'. */
  public var superChatDetails: LiveChatSuperChatDetails?

  /** Details about the Super Sticker event, this is only set if the type is 'superStickerEvent'. */
  public var superStickerDetails: LiveChatSuperStickerDetails?

  /** Details about the text message, this is only set if the type is 'textMessageEvent'. */
  public var textMessageDetails: LiveChatTextMessageDetails?

  /** The type of message, this will always be present, it determines the contents of the message as well as which fields will be present. */
  public var type: `Type`?

  public var userBannedDetails: LiveChatUserBannedMessageDetails?

  public init(authorChannelId: String? = nil, displayMessage: String? = nil, fanFundingEventDetails: LiveChatFanFundingEventDetails? = nil, hasDisplayContent: Bool? = nil, liveChatId: String? = nil, memberMilestoneChatDetails: LiveChatMemberMilestoneChatDetails? = nil, messageDeletedDetails: LiveChatMessageDeletedDetails? = nil, messageRetractedDetails: LiveChatMessageRetractedDetails? = nil, newSponsorDetails: LiveChatNewSponsorDetails? = nil, publishedAt: Date? = nil, superChatDetails: LiveChatSuperChatDetails? = nil, superStickerDetails: LiveChatSuperStickerDetails? = nil, textMessageDetails: LiveChatTextMessageDetails? = nil, type: Type? = nil, userBannedDetails: LiveChatUserBannedMessageDetails? = nil) {
    self.authorChannelId = authorChannelId
    self.displayMessage = displayMessage
    self.fanFundingEventDetails = fanFundingEventDetails
    self.hasDisplayContent = hasDisplayContent
    self.liveChatId = liveChatId
    self.memberMilestoneChatDetails = memberMilestoneChatDetails
    self.messageDeletedDetails = messageDeletedDetails
    self.messageRetractedDetails = messageRetractedDetails
    self.newSponsorDetails = newSponsorDetails
    self.publishedAt = publishedAt
    self.superChatDetails = superChatDetails
    self.superStickerDetails = superStickerDetails
    self.textMessageDetails = textMessageDetails
    self.type = type
    self.userBannedDetails = userBannedDetails
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    authorChannelId = try container.decodeIfPresent("authorChannelId")
    displayMessage = try container.decodeIfPresent("displayMessage")
    fanFundingEventDetails = try container.decodeIfPresent("fanFundingEventDetails")
    hasDisplayContent = try container.decodeIfPresent("hasDisplayContent")
    liveChatId = try container.decodeIfPresent("liveChatId")
    memberMilestoneChatDetails = try container.decodeIfPresent("memberMilestoneChatDetails")
    messageDeletedDetails = try container.decodeIfPresent("messageDeletedDetails")
    messageRetractedDetails = try container.decodeIfPresent("messageRetractedDetails")
    newSponsorDetails = try container.decodeIfPresent("newSponsorDetails")
    publishedAt = try container.decodeIfPresent("publishedAt")
    superChatDetails = try container.decodeIfPresent("superChatDetails")
    superStickerDetails = try container.decodeIfPresent("superStickerDetails")
    textMessageDetails = try container.decodeIfPresent("textMessageDetails")
    type = try container.decodeIfPresent("type")
    userBannedDetails = try container.decodeIfPresent("userBannedDetails")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(authorChannelId, forKey: "authorChannelId")
    try container.encodeIfPresent(displayMessage, forKey: "displayMessage")
    try container.encodeIfPresent(fanFundingEventDetails, forKey: "fanFundingEventDetails")
    try container.encodeIfPresent(hasDisplayContent, forKey: "hasDisplayContent")
    try container.encodeIfPresent(liveChatId, forKey: "liveChatId")
    try container.encodeIfPresent(memberMilestoneChatDetails, forKey: "memberMilestoneChatDetails")
    try container.encodeIfPresent(messageDeletedDetails, forKey: "messageDeletedDetails")
    try container.encodeIfPresent(messageRetractedDetails, forKey: "messageRetractedDetails")
    try container.encodeIfPresent(newSponsorDetails, forKey: "newSponsorDetails")
    try container.encodeIfPresent(publishedAt, forKey: "publishedAt")
    try container.encodeIfPresent(superChatDetails, forKey: "superChatDetails")
    try container.encodeIfPresent(superStickerDetails, forKey: "superStickerDetails")
    try container.encodeIfPresent(textMessageDetails, forKey: "textMessageDetails")
    try container.encodeIfPresent(type, forKey: "type")
    try container.encodeIfPresent(userBannedDetails, forKey: "userBannedDetails")
  }
}
