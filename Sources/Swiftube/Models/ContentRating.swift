import Foundation
import Prch

/** Ratings schemes. The country-specific ratings are mostly for movies and shows. LINT.IfChange */
public struct ContentRating: Model {
  /** The video's Australian Classification Board (ACB) or Australian Communications and Media Authority (ACMA) rating. ACMA ratings are used to classify children's television programming. */
  public enum AcbRating: String, Codable, Equatable, CaseIterable {
    case acbUnspecified
    case acbE
    case acbP
    case acbC
    case acbG
    case acbPg
    case acbM
    case acbMa15plus
    case acbR18plus
    case acbUnrated
  }

  /** The video's rating from Italy's Autorità per le Garanzie nelle Comunicazioni (AGCOM). */
  public enum AgcomRating: String, Codable, Equatable, CaseIterable {
    case agcomUnspecified
    case agcomT
    case agcomVm14
    case agcomVm18
    case agcomUnrated
  }

  /** The video's Anatel (Asociación Nacional de Televisión) rating for Chilean television. */
  public enum AnatelRating: String, Codable, Equatable, CaseIterable {
    case anatelUnspecified
    case anatelF
    case anatelI
    case anatelI7
    case anatelI10
    case anatelI12
    case anatelR
    case anatelA
    case anatelUnrated
  }

  /** The video's British Board of Film Classification (BBFC) rating. */
  public enum BbfcRating: String, Codable, Equatable, CaseIterable {
    case bbfcUnspecified
    case bbfcU
    case bbfcPg
    case bbfc12a
    case bbfc12
    case bbfc15
    case bbfc18
    case bbfcR18
    case bbfcUnrated
  }

  /** The video's rating from Thailand's Board of Film and Video Censors. */
  public enum BfvcRating: String, Codable, Equatable, CaseIterable {
    case bfvcUnspecified
    case bfvcG
    case bfvcE
    case bfvc13
    case bfvc15
    case bfvc18
    case bfvc20
    case bfvcB
    case bfvcUnrated
  }

  /** The video's rating from the Austrian Board of Media Classification (Bundesministerium für Unterricht, Kunst und Kultur). */
  public enum BmukkRating: String, Codable, Equatable, CaseIterable {
    case bmukkUnspecified
    case bmukkAa
    case bmukk6
    case bmukk8
    case bmukk10
    case bmukk12
    case bmukk14
    case bmukk16
    case bmukkUnrated
  }

  /** Rating system for Canadian TV - Canadian TV Classification System The video's rating from the Canadian Radio-Television and Telecommunications Commission (CRTC) for Canadian English-language broadcasts. For more information, see the Canadian Broadcast Standards Council website. */
  public enum CatvRating: String, Codable, Equatable, CaseIterable {
    case catvUnspecified
    case catvC
    case catvC8
    case catvG
    case catvPg
    case catv14plus
    case catv18plus
    case catvUnrated
    case catvE
  }

  /** The video's rating from the Canadian Radio-Television and Telecommunications Commission (CRTC) for Canadian French-language broadcasts. For more information, see the Canadian Broadcast Standards Council website. */
  public enum CatvfrRating: String, Codable, Equatable, CaseIterable {
    case catvfrUnspecified
    case catvfrG
    case catvfr8plus
    case catvfr13plus
    case catvfr16plus
    case catvfr18plus
    case catvfrUnrated
    case catvfrE
  }

  /** The video's Central Board of Film Certification (CBFC - India) rating. */
  public enum CbfcRating: String, Codable, Equatable, CaseIterable {
    case cbfcUnspecified
    case cbfcU
    case cbfcUA
    case cbfcA
    case cbfcS
    case cbfcUnrated
  }

  /** The video's Consejo de Calificación Cinematográfica (Chile) rating. */
  public enum CccRating: String, Codable, Equatable, CaseIterable {
    case cccUnspecified
    case cccTe
    case ccc6
    case ccc14
    case ccc18
    case ccc18v
    case ccc18s
    case cccUnrated
  }

  /** The video's rating from Portugal's Comissão de Classificação de Espect´culos. */
  public enum CceRating: String, Codable, Equatable, CaseIterable {
    case cceUnspecified
    case cceM4
    case cceM6
    case cceM12
    case cceM16
    case cceM18
    case cceUnrated
    case cceM14
  }

  /** The video's rating in Switzerland. */
  public enum ChfilmRating: String, Codable, Equatable, CaseIterable {
    case chfilmUnspecified
    case chfilm0
    case chfilm6
    case chfilm12
    case chfilm16
    case chfilm18
    case chfilmUnrated
  }

  /** The video's Canadian Home Video Rating System (CHVRS) rating. */
  public enum ChvrsRating: String, Codable, Equatable, CaseIterable {
    case chvrsUnspecified
    case chvrsG
    case chvrsPg
    case chvrs14a
    case chvrs18a
    case chvrsR
    case chvrsE
    case chvrsUnrated
  }

  /** The video's rating from the Commission de Contrôle des Films (Belgium). */
  public enum CicfRating: String, Codable, Equatable, CaseIterable {
    case cicfUnspecified
    case cicfE
    case cicfKtEa
    case cicfKntEna
    case cicfUnrated
  }

  /** The video's rating from Romania's CONSILIUL NATIONAL AL AUDIOVIZUALULUI (CNA). */
  public enum CnaRating: String, Codable, Equatable, CaseIterable {
    case cnaUnspecified
    case cnaAp
    case cna12
    case cna15
    case cna18
    case cna18plus
    case cnaUnrated
  }

  /** Rating system in France - Commission de classification cinematographique */
  public enum CncRating: String, Codable, Equatable, CaseIterable {
    case cncUnspecified
    case cncT
    case cnc10
    case cnc12
    case cnc16
    case cnc18
    case cncE
    case cncInterdiction
    case cncUnrated
  }

  /** The video's rating from France's Conseil supérieur de l’audiovisuel, which rates broadcast content. */
  public enum CsaRating: String, Codable, Equatable, CaseIterable {
    case csaUnspecified
    case csaT
    case csa10
    case csa12
    case csa16
    case csa18
    case csaInterdiction
    case csaUnrated
  }

  /** The video's rating from Luxembourg's Commission de surveillance de la classification des films (CSCF). */
  public enum CscfRating: String, Codable, Equatable, CaseIterable {
    case cscfUnspecified
    case cscfAl
    case cscfA
    case cscf6
    case cscf9
    case cscf12
    case cscf16
    case cscf18
    case cscfUnrated
  }

  /** The video's rating in the Czech Republic. */
  public enum CzfilmRating: String, Codable, Equatable, CaseIterable {
    case czfilmUnspecified
    case czfilmU
    case czfilm12
    case czfilm14
    case czfilm18
    case czfilmUnrated
  }

  /** The video's Departamento de Justiça, Classificação, Qualificação e Títulos (DJCQT - Brazil) rating. */
  public enum DjctqRating: String, Codable, Equatable, CaseIterable {
    case djctqUnspecified
    case djctqL
    case djctq10
    case djctq12
    case djctq14
    case djctq16
    case djctq18
    case djctqEr
    case djctqL10
    case djctqL12
    case djctqL14
    case djctqL16
    case djctqL18
    case djctq1012
    case djctq1014
    case djctq1016
    case djctq1018
    case djctq1214
    case djctq1216
    case djctq1218
    case djctq1416
    case djctq1418
    case djctq1618
    case djctqUnrated
  }

  /** Reasons that explain why the video received its DJCQT (Brazil) rating. */
  public enum DjctqRatingReasons: String, Codable, Equatable, CaseIterable {
    case djctqRatingReasonUnspecified
    case djctqViolence
    case djctqExtremeViolence
    case djctqSexualContent
    case djctqNudity
    case djctqSex
    case djctqExplicitSex
    case djctqDrugs
    case djctqLegalDrugs
    case djctqIllegalDrugs
    case djctqInappropriateLanguage
    case djctqCriminalActs
    case djctqImpactingContent
  }

  /** Rating system in Turkey - Evaluation and Classification Board of the Ministry of Culture and Tourism */
  public enum EcbmctRating: String, Codable, Equatable, CaseIterable {
    case ecbmctUnspecified
    case ecbmctG
    case ecbmct7a
    case ecbmct7plus
    case ecbmct13a
    case ecbmct13plus
    case ecbmct15a
    case ecbmct15plus
    case ecbmct18plus
    case ecbmctUnrated
  }

  /** The video's rating in Estonia. */
  public enum EefilmRating: String, Codable, Equatable, CaseIterable {
    case eefilmUnspecified
    case eefilmPere
    case eefilmL
    case eefilmMs6
    case eefilmK6
    case eefilmMs12
    case eefilmK12
    case eefilmK14
    case eefilmK16
    case eefilmUnrated
  }

  /** The video's rating in Egypt. */
  public enum EgfilmRating: String, Codable, Equatable, CaseIterable {
    case egfilmUnspecified
    case egfilmGn
    case egfilm18
    case egfilmBn
    case egfilmUnrated
  }

  /** The video's Eirin (映倫) rating. Eirin is the Japanese rating system. */
  public enum EirinRating: String, Codable, Equatable, CaseIterable {
    case eirinUnspecified
    case eirinG
    case eirinPg12
    case eirinR15plus
    case eirinR18plus
    case eirinUnrated
  }

  /** The video's rating from Malaysia's Film Censorship Board. */
  public enum FcbmRating: String, Codable, Equatable, CaseIterable {
    case fcbmUnspecified
    case fcbmU
    case fcbmPg13
    case fcbmP13
    case fcbm18
    case fcbm18sx
    case fcbm18pa
    case fcbm18sg
    case fcbm18pl
    case fcbmUnrated
  }

  /** The video's rating from Hong Kong's Office for Film, Newspaper and Article Administration. */
  public enum FcoRating: String, Codable, Equatable, CaseIterable {
    case fcoUnspecified
    case fcoI
    case fcoIia
    case fcoIib
    case fcoIi
    case fcoIii
    case fcoUnrated
  }

  /** This property has been deprecated. Use the contentDetails.contentRating.cncRating instead. */
  public enum FmocRating: String, Codable, Equatable, CaseIterable {
    case fmocUnspecified
    case fmocU
    case fmoc10
    case fmoc12
    case fmoc16
    case fmoc18
    case fmocE
    case fmocUnrated
  }

  /** The video's rating from South Africa's Film and Publication Board. */
  public enum FpbRating: String, Codable, Equatable, CaseIterable {
    case fpbUnspecified
    case fpbA
    case fpbPg
    case fpb79Pg
    case fpb1012Pg
    case fpb13
    case fpb16
    case fpb18
    case fpbX18
    case fpbXx
    case fpbUnrated
    case fpb10
  }

  /** Reasons that explain why the video received its FPB (South Africa) rating. */
  public enum FpbRatingReasons: String, Codable, Equatable, CaseIterable {
    case fpbRatingReasonUnspecified
    case fpbBlasphemy
    case fpbLanguage
    case fpbNudity
    case fpbPrejudice
    case fpbSex
    case fpbViolence
    case fpbDrugs
    case fpbSexualViolence
    case fpbHorror
    case fpbCriminalTechniques
    case fpbImitativeActsTechniques
  }

  /** The video's Freiwillige Selbstkontrolle der Filmwirtschaft (FSK - Germany) rating. */
  public enum FskRating: String, Codable, Equatable, CaseIterable {
    case fskUnspecified
    case fsk0
    case fsk6
    case fsk12
    case fsk16
    case fsk18
    case fskUnrated
  }

  /** The video's rating in Greece. */
  public enum GrfilmRating: String, Codable, Equatable, CaseIterable {
    case grfilmUnspecified
    case grfilmK
    case grfilmE
    case grfilmK12
    case grfilmK13
    case grfilmK15
    case grfilmK17
    case grfilmK18
    case grfilmUnrated
  }

  /** The video's Instituto de la Cinematografía y de las Artes Audiovisuales (ICAA - Spain) rating. */
  public enum IcaaRating: String, Codable, Equatable, CaseIterable {
    case icaaUnspecified
    case icaaApta
    case icaa7
    case icaa12
    case icaa13
    case icaa16
    case icaa18
    case icaaX
    case icaaUnrated
  }

  /** The video's Irish Film Classification Office (IFCO - Ireland) rating. See the IFCO website for more information. */
  public enum IfcoRating: String, Codable, Equatable, CaseIterable {
    case ifcoUnspecified
    case ifcoG
    case ifcoPg
    case ifco12
    case ifco12a
    case ifco15
    case ifco15a
    case ifco16
    case ifco18
    case ifcoUnrated
  }

  /** The video's rating in Israel. */
  public enum IlfilmRating: String, Codable, Equatable, CaseIterable {
    case ilfilmUnspecified
    case ilfilmAa
    case ilfilm12
    case ilfilm14
    case ilfilm16
    case ilfilm18
    case ilfilmUnrated
  }

  /** The video's INCAA (Instituto Nacional de Cine y Artes Audiovisuales - Argentina) rating. */
  public enum IncaaRating: String, Codable, Equatable, CaseIterable {
    case incaaUnspecified
    case incaaAtp
    case incaaSam13
    case incaaSam16
    case incaaSam18
    case incaaC
    case incaaUnrated
  }

  /** The video's rating from the Kenya Film Classification Board. */
  public enum KfcbRating: String, Codable, Equatable, CaseIterable {
    case kfcbUnspecified
    case kfcbG
    case kfcbPg
    case kfcb16plus
    case kfcbR
    case kfcbUnrated
  }

  /** The video's NICAM/Kijkwijzer rating from the Nederlands Instituut voor de Classificatie van Audiovisuele Media (Netherlands). */
  public enum KijkwijzerRating: String, Codable, Equatable, CaseIterable {
    case kijkwijzerUnspecified
    case kijkwijzerAl
    case kijkwijzer6
    case kijkwijzer9
    case kijkwijzer12
    case kijkwijzer16
    case kijkwijzer18
    case kijkwijzerUnrated
  }

  /** The video's Korea Media Rating Board (영상물등급위원회) rating. The KMRB rates videos in South Korea. */
  public enum KmrbRating: String, Codable, Equatable, CaseIterable {
    case kmrbUnspecified
    case kmrbAll
    case kmrb12plus
    case kmrb15plus
    case kmrbTeenr
    case kmrbR
    case kmrbUnrated
  }

  /** The video's rating from Indonesia's Lembaga Sensor Film. */
  public enum LsfRating: String, Codable, Equatable, CaseIterable {
    case lsfUnspecified
    case lsfSu
    case lsfA
    case lsfBo
    case lsf13
    case lsfR
    case lsf17
    case lsfD
    case lsf21
    case lsfUnrated
  }

  /** The video's rating from Malta's Film Age-Classification Board. */
  public enum MccaaRating: String, Codable, Equatable, CaseIterable {
    case mccaaUnspecified
    case mccaaU
    case mccaaPg
    case mccaa12a
    case mccaa12
    case mccaa14
    case mccaa15
    case mccaa16
    case mccaa18
    case mccaaUnrated
  }

  /** The video's rating from the Danish Film Institute's (Det Danske Filminstitut) Media Council for Children and Young People. */
  public enum MccypRating: String, Codable, Equatable, CaseIterable {
    case mccypUnspecified
    case mccypA
    case mccyp7
    case mccyp11
    case mccyp15
    case mccypUnrated
  }

  /** The video's rating system for Vietnam - MCST */
  public enum McstRating: String, Codable, Equatable, CaseIterable {
    case mcstUnspecified
    case mcstP
    case mcst0
    case mcstC13
    case mcstC16
    case mcst16plus
    case mcstC18
    case mcstGPg
    case mcstUnrated
  }

  /** The video's rating from Singapore's Media Development Authority (MDA) and, specifically, it's Board of Film Censors (BFC). */
  public enum MdaRating: String, Codable, Equatable, CaseIterable {
    case mdaUnspecified
    case mdaG
    case mdaPg
    case mdaPg13
    case mdaNc16
    case mdaM18
    case mdaR21
    case mdaUnrated
  }

  /** The video's rating from Medietilsynet, the Norwegian Media Authority. */
  public enum MedietilsynetRating: String, Codable, Equatable, CaseIterable {
    case medietilsynetUnspecified
    case medietilsynetA
    case medietilsynet6
    case medietilsynet7
    case medietilsynet9
    case medietilsynet11
    case medietilsynet12
    case medietilsynet15
    case medietilsynet18
    case medietilsynetUnrated
  }

  /** The video's rating from Finland's Kansallinen Audiovisuaalinen Instituutti (National Audiovisual Institute). */
  public enum MekuRating: String, Codable, Equatable, CaseIterable {
    case mekuUnspecified
    case mekuS
    case meku7
    case meku12
    case meku16
    case meku18
    case mekuUnrated
  }

  /** The rating system for MENA countries, a clone of MPAA. It is needed to prevent titles go live w/o additional QC check, since some of them can be inappropriate for the countries at all. See b/33408548 for more details. */
  public enum MenaMpaaRating: String, Codable, Equatable, CaseIterable {
    case menaMpaaUnspecified
    case menaMpaaG
    case menaMpaaPg
    case menaMpaaPg13
    case menaMpaaR
    case menaMpaaUnrated
  }

  /** The video's rating from the Ministero dei Beni e delle Attività Culturali e del Turismo (Italy). */
  public enum MibacRating: String, Codable, Equatable, CaseIterable {
    case mibacUnspecified
    case mibacT
    case mibacVap
    case mibacVm12
    case mibacVm14
    case mibacVm18
    case mibacUnrated
  }

  /** The video's Ministerio de Cultura (Colombia) rating. */
  public enum MocRating: String, Codable, Equatable, CaseIterable {
    case mocUnspecified
    case mocE
    case mocT
    case moc7
    case moc12
    case moc15
    case moc18
    case mocX
    case mocBanned
    case mocUnrated
  }

  /** The video's rating from Taiwan's Ministry of Culture (文化部). */
  public enum MoctwRating: String, Codable, Equatable, CaseIterable {
    case moctwUnspecified
    case moctwG
    case moctwP
    case moctwPg
    case moctwR
    case moctwUnrated
    case moctwR12
    case moctwR15
  }

  /** The video's Motion Picture Association of America (MPAA) rating. */
  public enum MpaaRating: String, Codable, Equatable, CaseIterable {
    case mpaaUnspecified
    case mpaaG
    case mpaaPg
    case mpaaPg13
    case mpaaR
    case mpaaNc17
    case mpaaX
    case mpaaUnrated
  }

  /** The rating system for trailer, DVD, and Ad in the US. See http://movielabs.com/md/ratings/v2.3/html/US_MPAAT_Ratings.html. */
  public enum MpaatRating: String, Codable, Equatable, CaseIterable {
    case mpaatUnspecified
    case mpaatGb
    case mpaatRb
  }

  /** The video's rating from the Movie and Television Review and Classification Board (Philippines). */
  public enum MtrcbRating: String, Codable, Equatable, CaseIterable {
    case mtrcbUnspecified
    case mtrcbG
    case mtrcbPg
    case mtrcbR13
    case mtrcbR16
    case mtrcbR18
    case mtrcbX
    case mtrcbUnrated
  }

  /** The video's rating from the Maldives National Bureau of Classification. */
  public enum NbcRating: String, Codable, Equatable, CaseIterable {
    case nbcUnspecified
    case nbcG
    case nbcPg
    case nbc12plus
    case nbc15plus
    case nbc18plus
    case nbc18plusr
    case nbcPu
    case nbcUnrated
  }

  /** The video's rating in Poland. */
  public enum NbcplRating: String, Codable, Equatable, CaseIterable {
    case nbcplUnspecified
    case nbcplI
    case nbcplIi
    case nbcplIii
    case nbcplIv
    case nbcpl18plus
    case nbcplUnrated
  }

  /** The video's rating from the Bulgarian National Film Center. */
  public enum NfrcRating: String, Codable, Equatable, CaseIterable {
    case nfrcUnspecified
    case nfrcA
    case nfrcB
    case nfrcC
    case nfrcD
    case nfrcX
    case nfrcUnrated
  }

  /** The video's rating from Nigeria's National Film and Video Censors Board. */
  public enum NfvcbRating: String, Codable, Equatable, CaseIterable {
    case nfvcbUnspecified
    case nfvcbG
    case nfvcbPg
    case nfvcb12
    case nfvcb12a
    case nfvcb15
    case nfvcb18
    case nfvcbRe
    case nfvcbUnrated
  }

  /** The video's rating from the Nacionãlais Kino centrs (National Film Centre of Latvia). */
  public enum NkclvRating: String, Codable, Equatable, CaseIterable {
    case nkclvUnspecified
    case nkclvU
    case nkclv7plus
    case nkclv12plus
    case nkclv16plus
    case nkclv18plus
    case nkclvUnrated
  }

  /** The National Media Council ratings system for United Arab Emirates. */
  public enum NmcRating: String, Codable, Equatable, CaseIterable {
    case nmcUnspecified
    case nmcG
    case nmcPg
    case nmcPg13
    case nmcPg15
    case nmc15plus
    case nmc18plus
    case nmc18tc
    case nmcUnrated
  }

  /** The video's Office of Film and Literature Classification (OFLC - New Zealand) rating. */
  public enum OflcRating: String, Codable, Equatable, CaseIterable {
    case oflcUnspecified
    case oflcG
    case oflcPg
    case oflcM
    case oflcR13
    case oflcR15
    case oflcR16
    case oflcR18
    case oflcUnrated
    case oflcRp13
    case oflcRp16
    case oflcRp18
  }

  /** The video's rating in Peru. */
  public enum PefilmRating: String, Codable, Equatable, CaseIterable {
    case pefilmUnspecified
    case pefilmPt
    case pefilmPg
    case pefilm14
    case pefilm18
    case pefilmUnrated
  }

  /** The video's rating from the Hungarian Nemzeti Filmiroda, the Rating Committee of the National Office of Film. */
  public enum RcnofRating: String, Codable, Equatable, CaseIterable {
    case rcnofUnspecified
    case rcnofI
    case rcnofIi
    case rcnofIii
    case rcnofIv
    case rcnofV
    case rcnofVi
    case rcnofUnrated
  }

  /** The video's rating in Venezuela. */
  public enum ResorteviolenciaRating: String, Codable, Equatable, CaseIterable {
    case resorteviolenciaUnspecified
    case resorteviolenciaA
    case resorteviolenciaB
    case resorteviolenciaC
    case resorteviolenciaD
    case resorteviolenciaE
    case resorteviolenciaUnrated
  }

  /** The video's General Directorate of Radio, Television and Cinematography (Mexico) rating. */
  public enum RtcRating: String, Codable, Equatable, CaseIterable {
    case rtcUnspecified
    case rtcAa
    case rtcA
    case rtcB
    case rtcB15
    case rtcC
    case rtcD
    case rtcUnrated
  }

  /** The video's rating from Ireland's Raidió Teilifís Éireann. */
  public enum RteRating: String, Codable, Equatable, CaseIterable {
    case rteUnspecified
    case rteGa
    case rteCh
    case rtePs
    case rteMa
    case rteUnrated
  }

  /** The video's National Film Registry of the Russian Federation (MKRF - Russia) rating. */
  public enum RussiaRating: String, Codable, Equatable, CaseIterable {
    case russiaUnspecified
    case russia0
    case russia6
    case russia12
    case russia16
    case russia18
    case russiaUnrated
  }

  /** The video's rating in Slovakia. */
  public enum SkfilmRating: String, Codable, Equatable, CaseIterable {
    case skfilmUnspecified
    case skfilmG
    case skfilmP2
    case skfilmP5
    case skfilmP8
    case skfilmUnrated
  }

  /** The video's rating in Iceland. */
  public enum SmaisRating: String, Codable, Equatable, CaseIterable {
    case smaisUnspecified
    case smaisL
    case smais7
    case smais12
    case smais14
    case smais16
    case smais18
    case smaisUnrated
  }

  /** The video's rating from Statens medieråd (Sweden's National Media Council). */
  public enum SmsaRating: String, Codable, Equatable, CaseIterable {
    case smsaUnspecified
    case smsaA
    case smsa7
    case smsa11
    case smsa15
    case smsaUnrated
  }

  /** The video's TV Parental Guidelines (TVPG) rating. */
  public enum TvpgRating: String, Codable, Equatable, CaseIterable {
    case tvpgUnspecified
    case tvpgY
    case tvpgY7
    case tvpgY7Fv
    case tvpgG
    case tvpgPg
    case pg14
    case tvpgMa
    case tvpgUnrated
  }

  /** A rating that YouTube uses to identify age-restricted content. */
  public enum YtRating: String, Codable, Equatable, CaseIterable {
    case ytUnspecified
    case ytAgeRestricted
  }

  /** The video's Australian Classification Board (ACB) or Australian Communications and Media Authority (ACMA) rating. ACMA ratings are used to classify children's television programming. */
  public var acbRating: AcbRating?

  /** The video's rating from Italy's Autorità per le Garanzie nelle Comunicazioni (AGCOM). */
  public var agcomRating: AgcomRating?

  /** The video's Anatel (Asociación Nacional de Televisión) rating for Chilean television. */
  public var anatelRating: AnatelRating?

  /** The video's British Board of Film Classification (BBFC) rating. */
  public var bbfcRating: BbfcRating?

  /** The video's rating from Thailand's Board of Film and Video Censors. */
  public var bfvcRating: BfvcRating?

  /** The video's rating from the Austrian Board of Media Classification (Bundesministerium für Unterricht, Kunst und Kultur). */
  public var bmukkRating: BmukkRating?

  /** Rating system for Canadian TV - Canadian TV Classification System The video's rating from the Canadian Radio-Television and Telecommunications Commission (CRTC) for Canadian English-language broadcasts. For more information, see the Canadian Broadcast Standards Council website. */
  public var catvRating: CatvRating?

  /** The video's rating from the Canadian Radio-Television and Telecommunications Commission (CRTC) for Canadian French-language broadcasts. For more information, see the Canadian Broadcast Standards Council website. */
  public var catvfrRating: CatvfrRating?

  /** The video's Central Board of Film Certification (CBFC - India) rating. */
  public var cbfcRating: CbfcRating?

  /** The video's Consejo de Calificación Cinematográfica (Chile) rating. */
  public var cccRating: CccRating?

  /** The video's rating from Portugal's Comissão de Classificação de Espect´culos. */
  public var cceRating: CceRating?

  /** The video's rating in Switzerland. */
  public var chfilmRating: ChfilmRating?

  /** The video's Canadian Home Video Rating System (CHVRS) rating. */
  public var chvrsRating: ChvrsRating?

  /** The video's rating from the Commission de Contrôle des Films (Belgium). */
  public var cicfRating: CicfRating?

  /** The video's rating from Romania's CONSILIUL NATIONAL AL AUDIOVIZUALULUI (CNA). */
  public var cnaRating: CnaRating?

  /** Rating system in France - Commission de classification cinematographique */
  public var cncRating: CncRating?

  /** The video's rating from France's Conseil supérieur de l’audiovisuel, which rates broadcast content. */
  public var csaRating: CsaRating?

  /** The video's rating from Luxembourg's Commission de surveillance de la classification des films (CSCF). */
  public var cscfRating: CscfRating?

  /** The video's rating in the Czech Republic. */
  public var czfilmRating: CzfilmRating?

  /** The video's Departamento de Justiça, Classificação, Qualificação e Títulos (DJCQT - Brazil) rating. */
  public var djctqRating: DjctqRating?

  /** Reasons that explain why the video received its DJCQT (Brazil) rating. */
  public var djctqRatingReasons: [DjctqRatingReasons]?

  /** Rating system in Turkey - Evaluation and Classification Board of the Ministry of Culture and Tourism */
  public var ecbmctRating: EcbmctRating?

  /** The video's rating in Estonia. */
  public var eefilmRating: EefilmRating?

  /** The video's rating in Egypt. */
  public var egfilmRating: EgfilmRating?

  /** The video's Eirin (映倫) rating. Eirin is the Japanese rating system. */
  public var eirinRating: EirinRating?

  /** The video's rating from Malaysia's Film Censorship Board. */
  public var fcbmRating: FcbmRating?

  /** The video's rating from Hong Kong's Office for Film, Newspaper and Article Administration. */
  public var fcoRating: FcoRating?

  /** This property has been deprecated. Use the contentDetails.contentRating.cncRating instead. */
  public var fmocRating: FmocRating?

  /** The video's rating from South Africa's Film and Publication Board. */
  public var fpbRating: FpbRating?

  /** Reasons that explain why the video received its FPB (South Africa) rating. */
  public var fpbRatingReasons: [FpbRatingReasons]?

  /** The video's Freiwillige Selbstkontrolle der Filmwirtschaft (FSK - Germany) rating. */
  public var fskRating: FskRating?

  /** The video's rating in Greece. */
  public var grfilmRating: GrfilmRating?

  /** The video's Instituto de la Cinematografía y de las Artes Audiovisuales (ICAA - Spain) rating. */
  public var icaaRating: IcaaRating?

  /** The video's Irish Film Classification Office (IFCO - Ireland) rating. See the IFCO website for more information. */
  public var ifcoRating: IfcoRating?

  /** The video's rating in Israel. */
  public var ilfilmRating: IlfilmRating?

  /** The video's INCAA (Instituto Nacional de Cine y Artes Audiovisuales - Argentina) rating. */
  public var incaaRating: IncaaRating?

  /** The video's rating from the Kenya Film Classification Board. */
  public var kfcbRating: KfcbRating?

  /** The video's NICAM/Kijkwijzer rating from the Nederlands Instituut voor de Classificatie van Audiovisuele Media (Netherlands). */
  public var kijkwijzerRating: KijkwijzerRating?

  /** The video's Korea Media Rating Board (영상물등급위원회) rating. The KMRB rates videos in South Korea. */
  public var kmrbRating: KmrbRating?

  /** The video's rating from Indonesia's Lembaga Sensor Film. */
  public var lsfRating: LsfRating?

  /** The video's rating from Malta's Film Age-Classification Board. */
  public var mccaaRating: MccaaRating?

  /** The video's rating from the Danish Film Institute's (Det Danske Filminstitut) Media Council for Children and Young People. */
  public var mccypRating: MccypRating?

  /** The video's rating system for Vietnam - MCST */
  public var mcstRating: McstRating?

  /** The video's rating from Singapore's Media Development Authority (MDA) and, specifically, it's Board of Film Censors (BFC). */
  public var mdaRating: MdaRating?

  /** The video's rating from Medietilsynet, the Norwegian Media Authority. */
  public var medietilsynetRating: MedietilsynetRating?

  /** The video's rating from Finland's Kansallinen Audiovisuaalinen Instituutti (National Audiovisual Institute). */
  public var mekuRating: MekuRating?

  /** The rating system for MENA countries, a clone of MPAA. It is needed to prevent titles go live w/o additional QC check, since some of them can be inappropriate for the countries at all. See b/33408548 for more details. */
  public var menaMpaaRating: MenaMpaaRating?

  /** The video's rating from the Ministero dei Beni e delle Attività Culturali e del Turismo (Italy). */
  public var mibacRating: MibacRating?

  /** The video's Ministerio de Cultura (Colombia) rating. */
  public var mocRating: MocRating?

  /** The video's rating from Taiwan's Ministry of Culture (文化部). */
  public var moctwRating: MoctwRating?

  /** The video's Motion Picture Association of America (MPAA) rating. */
  public var mpaaRating: MpaaRating?

  /** The rating system for trailer, DVD, and Ad in the US. See http://movielabs.com/md/ratings/v2.3/html/US_MPAAT_Ratings.html. */
  public var mpaatRating: MpaatRating?

  /** The video's rating from the Movie and Television Review and Classification Board (Philippines). */
  public var mtrcbRating: MtrcbRating?

  /** The video's rating from the Maldives National Bureau of Classification. */
  public var nbcRating: NbcRating?

  /** The video's rating in Poland. */
  public var nbcplRating: NbcplRating?

  /** The video's rating from the Bulgarian National Film Center. */
  public var nfrcRating: NfrcRating?

  /** The video's rating from Nigeria's National Film and Video Censors Board. */
  public var nfvcbRating: NfvcbRating?

  /** The video's rating from the Nacionãlais Kino centrs (National Film Centre of Latvia). */
  public var nkclvRating: NkclvRating?

  /** The National Media Council ratings system for United Arab Emirates. */
  public var nmcRating: NmcRating?

  /** The video's Office of Film and Literature Classification (OFLC - New Zealand) rating. */
  public var oflcRating: OflcRating?

  /** The video's rating in Peru. */
  public var pefilmRating: PefilmRating?

  /** The video's rating from the Hungarian Nemzeti Filmiroda, the Rating Committee of the National Office of Film. */
  public var rcnofRating: RcnofRating?

  /** The video's rating in Venezuela. */
  public var resorteviolenciaRating: ResorteviolenciaRating?

  /** The video's General Directorate of Radio, Television and Cinematography (Mexico) rating. */
  public var rtcRating: RtcRating?

  /** The video's rating from Ireland's Raidió Teilifís Éireann. */
  public var rteRating: RteRating?

  /** The video's National Film Registry of the Russian Federation (MKRF - Russia) rating. */
  public var russiaRating: RussiaRating?

  /** The video's rating in Slovakia. */
  public var skfilmRating: SkfilmRating?

  /** The video's rating in Iceland. */
  public var smaisRating: SmaisRating?

  /** The video's rating from Statens medieråd (Sweden's National Media Council). */
  public var smsaRating: SmsaRating?

  /** The video's TV Parental Guidelines (TVPG) rating. */
  public var tvpgRating: TvpgRating?

  /** A rating that YouTube uses to identify age-restricted content. */
  public var ytRating: YtRating?

  public init(acbRating: AcbRating? = nil, agcomRating: AgcomRating? = nil, anatelRating: AnatelRating? = nil, bbfcRating: BbfcRating? = nil, bfvcRating: BfvcRating? = nil, bmukkRating: BmukkRating? = nil, catvRating: CatvRating? = nil, catvfrRating: CatvfrRating? = nil, cbfcRating: CbfcRating? = nil, cccRating: CccRating? = nil, cceRating: CceRating? = nil, chfilmRating: ChfilmRating? = nil, chvrsRating: ChvrsRating? = nil, cicfRating: CicfRating? = nil, cnaRating: CnaRating? = nil, cncRating: CncRating? = nil, csaRating: CsaRating? = nil, cscfRating: CscfRating? = nil, czfilmRating: CzfilmRating? = nil, djctqRating: DjctqRating? = nil, djctqRatingReasons: [DjctqRatingReasons]? = nil, ecbmctRating: EcbmctRating? = nil, eefilmRating: EefilmRating? = nil, egfilmRating: EgfilmRating? = nil, eirinRating: EirinRating? = nil, fcbmRating: FcbmRating? = nil, fcoRating: FcoRating? = nil, fmocRating: FmocRating? = nil, fpbRating: FpbRating? = nil, fpbRatingReasons: [FpbRatingReasons]? = nil, fskRating: FskRating? = nil, grfilmRating: GrfilmRating? = nil, icaaRating: IcaaRating? = nil, ifcoRating: IfcoRating? = nil, ilfilmRating: IlfilmRating? = nil, incaaRating: IncaaRating? = nil, kfcbRating: KfcbRating? = nil, kijkwijzerRating: KijkwijzerRating? = nil, kmrbRating: KmrbRating? = nil, lsfRating: LsfRating? = nil, mccaaRating: MccaaRating? = nil, mccypRating: MccypRating? = nil, mcstRating: McstRating? = nil, mdaRating: MdaRating? = nil, medietilsynetRating: MedietilsynetRating? = nil, mekuRating: MekuRating? = nil, menaMpaaRating: MenaMpaaRating? = nil, mibacRating: MibacRating? = nil, mocRating: MocRating? = nil, moctwRating: MoctwRating? = nil, mpaaRating: MpaaRating? = nil, mpaatRating: MpaatRating? = nil, mtrcbRating: MtrcbRating? = nil, nbcRating: NbcRating? = nil, nbcplRating: NbcplRating? = nil, nfrcRating: NfrcRating? = nil, nfvcbRating: NfvcbRating? = nil, nkclvRating: NkclvRating? = nil, nmcRating: NmcRating? = nil, oflcRating: OflcRating? = nil, pefilmRating: PefilmRating? = nil, rcnofRating: RcnofRating? = nil, resorteviolenciaRating: ResorteviolenciaRating? = nil, rtcRating: RtcRating? = nil, rteRating: RteRating? = nil, russiaRating: RussiaRating? = nil, skfilmRating: SkfilmRating? = nil, smaisRating: SmaisRating? = nil, smsaRating: SmsaRating? = nil, tvpgRating: TvpgRating? = nil, ytRating: YtRating? = nil) {
    self.acbRating = acbRating
    self.agcomRating = agcomRating
    self.anatelRating = anatelRating
    self.bbfcRating = bbfcRating
    self.bfvcRating = bfvcRating
    self.bmukkRating = bmukkRating
    self.catvRating = catvRating
    self.catvfrRating = catvfrRating
    self.cbfcRating = cbfcRating
    self.cccRating = cccRating
    self.cceRating = cceRating
    self.chfilmRating = chfilmRating
    self.chvrsRating = chvrsRating
    self.cicfRating = cicfRating
    self.cnaRating = cnaRating
    self.cncRating = cncRating
    self.csaRating = csaRating
    self.cscfRating = cscfRating
    self.czfilmRating = czfilmRating
    self.djctqRating = djctqRating
    self.djctqRatingReasons = djctqRatingReasons
    self.ecbmctRating = ecbmctRating
    self.eefilmRating = eefilmRating
    self.egfilmRating = egfilmRating
    self.eirinRating = eirinRating
    self.fcbmRating = fcbmRating
    self.fcoRating = fcoRating
    self.fmocRating = fmocRating
    self.fpbRating = fpbRating
    self.fpbRatingReasons = fpbRatingReasons
    self.fskRating = fskRating
    self.grfilmRating = grfilmRating
    self.icaaRating = icaaRating
    self.ifcoRating = ifcoRating
    self.ilfilmRating = ilfilmRating
    self.incaaRating = incaaRating
    self.kfcbRating = kfcbRating
    self.kijkwijzerRating = kijkwijzerRating
    self.kmrbRating = kmrbRating
    self.lsfRating = lsfRating
    self.mccaaRating = mccaaRating
    self.mccypRating = mccypRating
    self.mcstRating = mcstRating
    self.mdaRating = mdaRating
    self.medietilsynetRating = medietilsynetRating
    self.mekuRating = mekuRating
    self.menaMpaaRating = menaMpaaRating
    self.mibacRating = mibacRating
    self.mocRating = mocRating
    self.moctwRating = moctwRating
    self.mpaaRating = mpaaRating
    self.mpaatRating = mpaatRating
    self.mtrcbRating = mtrcbRating
    self.nbcRating = nbcRating
    self.nbcplRating = nbcplRating
    self.nfrcRating = nfrcRating
    self.nfvcbRating = nfvcbRating
    self.nkclvRating = nkclvRating
    self.nmcRating = nmcRating
    self.oflcRating = oflcRating
    self.pefilmRating = pefilmRating
    self.rcnofRating = rcnofRating
    self.resorteviolenciaRating = resorteviolenciaRating
    self.rtcRating = rtcRating
    self.rteRating = rteRating
    self.russiaRating = russiaRating
    self.skfilmRating = skfilmRating
    self.smaisRating = smaisRating
    self.smsaRating = smsaRating
    self.tvpgRating = tvpgRating
    self.ytRating = ytRating
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    acbRating = try container.decodeIfPresent("acbRating")
    agcomRating = try container.decodeIfPresent("agcomRating")
    anatelRating = try container.decodeIfPresent("anatelRating")
    bbfcRating = try container.decodeIfPresent("bbfcRating")
    bfvcRating = try container.decodeIfPresent("bfvcRating")
    bmukkRating = try container.decodeIfPresent("bmukkRating")
    catvRating = try container.decodeIfPresent("catvRating")
    catvfrRating = try container.decodeIfPresent("catvfrRating")
    cbfcRating = try container.decodeIfPresent("cbfcRating")
    cccRating = try container.decodeIfPresent("cccRating")
    cceRating = try container.decodeIfPresent("cceRating")
    chfilmRating = try container.decodeIfPresent("chfilmRating")
    chvrsRating = try container.decodeIfPresent("chvrsRating")
    cicfRating = try container.decodeIfPresent("cicfRating")
    cnaRating = try container.decodeIfPresent("cnaRating")
    cncRating = try container.decodeIfPresent("cncRating")
    csaRating = try container.decodeIfPresent("csaRating")
    cscfRating = try container.decodeIfPresent("cscfRating")
    czfilmRating = try container.decodeIfPresent("czfilmRating")
    djctqRating = try container.decodeIfPresent("djctqRating")
    djctqRatingReasons = try container.decodeArrayIfPresent("djctqRatingReasons")
    ecbmctRating = try container.decodeIfPresent("ecbmctRating")
    eefilmRating = try container.decodeIfPresent("eefilmRating")
    egfilmRating = try container.decodeIfPresent("egfilmRating")
    eirinRating = try container.decodeIfPresent("eirinRating")
    fcbmRating = try container.decodeIfPresent("fcbmRating")
    fcoRating = try container.decodeIfPresent("fcoRating")
    fmocRating = try container.decodeIfPresent("fmocRating")
    fpbRating = try container.decodeIfPresent("fpbRating")
    fpbRatingReasons = try container.decodeArrayIfPresent("fpbRatingReasons")
    fskRating = try container.decodeIfPresent("fskRating")
    grfilmRating = try container.decodeIfPresent("grfilmRating")
    icaaRating = try container.decodeIfPresent("icaaRating")
    ifcoRating = try container.decodeIfPresent("ifcoRating")
    ilfilmRating = try container.decodeIfPresent("ilfilmRating")
    incaaRating = try container.decodeIfPresent("incaaRating")
    kfcbRating = try container.decodeIfPresent("kfcbRating")
    kijkwijzerRating = try container.decodeIfPresent("kijkwijzerRating")
    kmrbRating = try container.decodeIfPresent("kmrbRating")
    lsfRating = try container.decodeIfPresent("lsfRating")
    mccaaRating = try container.decodeIfPresent("mccaaRating")
    mccypRating = try container.decodeIfPresent("mccypRating")
    mcstRating = try container.decodeIfPresent("mcstRating")
    mdaRating = try container.decodeIfPresent("mdaRating")
    medietilsynetRating = try container.decodeIfPresent("medietilsynetRating")
    mekuRating = try container.decodeIfPresent("mekuRating")
    menaMpaaRating = try container.decodeIfPresent("menaMpaaRating")
    mibacRating = try container.decodeIfPresent("mibacRating")
    mocRating = try container.decodeIfPresent("mocRating")
    moctwRating = try container.decodeIfPresent("moctwRating")
    mpaaRating = try container.decodeIfPresent("mpaaRating")
    mpaatRating = try container.decodeIfPresent("mpaatRating")
    mtrcbRating = try container.decodeIfPresent("mtrcbRating")
    nbcRating = try container.decodeIfPresent("nbcRating")
    nbcplRating = try container.decodeIfPresent("nbcplRating")
    nfrcRating = try container.decodeIfPresent("nfrcRating")
    nfvcbRating = try container.decodeIfPresent("nfvcbRating")
    nkclvRating = try container.decodeIfPresent("nkclvRating")
    nmcRating = try container.decodeIfPresent("nmcRating")
    oflcRating = try container.decodeIfPresent("oflcRating")
    pefilmRating = try container.decodeIfPresent("pefilmRating")
    rcnofRating = try container.decodeIfPresent("rcnofRating")
    resorteviolenciaRating = try container.decodeIfPresent("resorteviolenciaRating")
    rtcRating = try container.decodeIfPresent("rtcRating")
    rteRating = try container.decodeIfPresent("rteRating")
    russiaRating = try container.decodeIfPresent("russiaRating")
    skfilmRating = try container.decodeIfPresent("skfilmRating")
    smaisRating = try container.decodeIfPresent("smaisRating")
    smsaRating = try container.decodeIfPresent("smsaRating")
    tvpgRating = try container.decodeIfPresent("tvpgRating")
    ytRating = try container.decodeIfPresent("ytRating")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(acbRating, forKey: "acbRating")
    try container.encodeIfPresent(agcomRating, forKey: "agcomRating")
    try container.encodeIfPresent(anatelRating, forKey: "anatelRating")
    try container.encodeIfPresent(bbfcRating, forKey: "bbfcRating")
    try container.encodeIfPresent(bfvcRating, forKey: "bfvcRating")
    try container.encodeIfPresent(bmukkRating, forKey: "bmukkRating")
    try container.encodeIfPresent(catvRating, forKey: "catvRating")
    try container.encodeIfPresent(catvfrRating, forKey: "catvfrRating")
    try container.encodeIfPresent(cbfcRating, forKey: "cbfcRating")
    try container.encodeIfPresent(cccRating, forKey: "cccRating")
    try container.encodeIfPresent(cceRating, forKey: "cceRating")
    try container.encodeIfPresent(chfilmRating, forKey: "chfilmRating")
    try container.encodeIfPresent(chvrsRating, forKey: "chvrsRating")
    try container.encodeIfPresent(cicfRating, forKey: "cicfRating")
    try container.encodeIfPresent(cnaRating, forKey: "cnaRating")
    try container.encodeIfPresent(cncRating, forKey: "cncRating")
    try container.encodeIfPresent(csaRating, forKey: "csaRating")
    try container.encodeIfPresent(cscfRating, forKey: "cscfRating")
    try container.encodeIfPresent(czfilmRating, forKey: "czfilmRating")
    try container.encodeIfPresent(djctqRating, forKey: "djctqRating")
    try container.encodeIfPresent(djctqRatingReasons, forKey: "djctqRatingReasons")
    try container.encodeIfPresent(ecbmctRating, forKey: "ecbmctRating")
    try container.encodeIfPresent(eefilmRating, forKey: "eefilmRating")
    try container.encodeIfPresent(egfilmRating, forKey: "egfilmRating")
    try container.encodeIfPresent(eirinRating, forKey: "eirinRating")
    try container.encodeIfPresent(fcbmRating, forKey: "fcbmRating")
    try container.encodeIfPresent(fcoRating, forKey: "fcoRating")
    try container.encodeIfPresent(fmocRating, forKey: "fmocRating")
    try container.encodeIfPresent(fpbRating, forKey: "fpbRating")
    try container.encodeIfPresent(fpbRatingReasons, forKey: "fpbRatingReasons")
    try container.encodeIfPresent(fskRating, forKey: "fskRating")
    try container.encodeIfPresent(grfilmRating, forKey: "grfilmRating")
    try container.encodeIfPresent(icaaRating, forKey: "icaaRating")
    try container.encodeIfPresent(ifcoRating, forKey: "ifcoRating")
    try container.encodeIfPresent(ilfilmRating, forKey: "ilfilmRating")
    try container.encodeIfPresent(incaaRating, forKey: "incaaRating")
    try container.encodeIfPresent(kfcbRating, forKey: "kfcbRating")
    try container.encodeIfPresent(kijkwijzerRating, forKey: "kijkwijzerRating")
    try container.encodeIfPresent(kmrbRating, forKey: "kmrbRating")
    try container.encodeIfPresent(lsfRating, forKey: "lsfRating")
    try container.encodeIfPresent(mccaaRating, forKey: "mccaaRating")
    try container.encodeIfPresent(mccypRating, forKey: "mccypRating")
    try container.encodeIfPresent(mcstRating, forKey: "mcstRating")
    try container.encodeIfPresent(mdaRating, forKey: "mdaRating")
    try container.encodeIfPresent(medietilsynetRating, forKey: "medietilsynetRating")
    try container.encodeIfPresent(mekuRating, forKey: "mekuRating")
    try container.encodeIfPresent(menaMpaaRating, forKey: "menaMpaaRating")
    try container.encodeIfPresent(mibacRating, forKey: "mibacRating")
    try container.encodeIfPresent(mocRating, forKey: "mocRating")
    try container.encodeIfPresent(moctwRating, forKey: "moctwRating")
    try container.encodeIfPresent(mpaaRating, forKey: "mpaaRating")
    try container.encodeIfPresent(mpaatRating, forKey: "mpaatRating")
    try container.encodeIfPresent(mtrcbRating, forKey: "mtrcbRating")
    try container.encodeIfPresent(nbcRating, forKey: "nbcRating")
    try container.encodeIfPresent(nbcplRating, forKey: "nbcplRating")
    try container.encodeIfPresent(nfrcRating, forKey: "nfrcRating")
    try container.encodeIfPresent(nfvcbRating, forKey: "nfvcbRating")
    try container.encodeIfPresent(nkclvRating, forKey: "nkclvRating")
    try container.encodeIfPresent(nmcRating, forKey: "nmcRating")
    try container.encodeIfPresent(oflcRating, forKey: "oflcRating")
    try container.encodeIfPresent(pefilmRating, forKey: "pefilmRating")
    try container.encodeIfPresent(rcnofRating, forKey: "rcnofRating")
    try container.encodeIfPresent(resorteviolenciaRating, forKey: "resorteviolenciaRating")
    try container.encodeIfPresent(rtcRating, forKey: "rtcRating")
    try container.encodeIfPresent(rteRating, forKey: "rteRating")
    try container.encodeIfPresent(russiaRating, forKey: "russiaRating")
    try container.encodeIfPresent(skfilmRating, forKey: "skfilmRating")
    try container.encodeIfPresent(smaisRating, forKey: "smaisRating")
    try container.encodeIfPresent(smsaRating, forKey: "smsaRating")
    try container.encodeIfPresent(tvpgRating, forKey: "tvpgRating")
    try container.encodeIfPresent(ytRating, forKey: "ytRating")
  }
}
