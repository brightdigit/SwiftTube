import Foundation
import Prch

/** The YouTube Data API v3 is an API that provides access to YouTube data, such as videos, playlists, and channels. */
public enum SwiftTube {
  /// Whether to discard any errors when decoding optional properties
  public static var safeOptionalDecoding = false

  /// Whether to remove invalid elements instead of throwing when decoding arrays
  public static var safeArrayDecoding = false

  /// Used to encode Dates when uses as string params
  public static var dateEncodingFormatter = DateFormatter(formatString: "yyyy-MM-dd'T'HH:mm:ssZZZZZ",
                                                          locale: Locale(identifier: "en_US_POSIX"),
                                                          calendar: Calendar(identifier: .gregorian))

  public static let version = "v3"

  public enum Server {
    public static let main = "https://youtube.googleapis.com/"
  }

  public struct API {}
}

//extension SwiftTube.API : Prch.API {
//  public var baseURL: URL {
//    return SwiftTube.Server.main
//  }
//  
//  public var headers: [String : String] {
//    <#code#>
//  }
//  
//  public var decoder: ResponseDecoder {
//    <#code#>
//  }
//  
//  
//}


public enum AbuseReports {}
public enum Activities {}
public enum Captions {}
public enum ChannelBanners {}
public enum ChannelSections {}
public enum Channels {}
public enum CommentThreads {}
public enum Comments {}
public enum I18nLanguages {}
public enum I18nRegions {}
public enum LiveBroadcasts {}
public enum LiveChatBans {}
public enum LiveChatMessages {}
public enum LiveChatModerators {}
public enum LiveStreams {}
public enum Members {}
public enum MembershipsLevels {}
public enum PlaylistItems {}
public enum Playlists {}
public enum Search {}
public enum Subscriptions {}
public enum SuperChatEvents {}
public enum Tests {}
public enum ThirdPartyLinks {}
public enum Thumbnails {}
public enum VideoAbuseReportReasons {}
public enum VideoCategories {}
public enum Videos {}
public enum Watermarks {}
public enum Youtube {}
