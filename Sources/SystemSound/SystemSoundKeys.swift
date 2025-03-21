import AudioToolbox

public struct SystemSoundKey: CaseIterable, Equatable, Codable, Hashable {
    public let name: String
    public let id: Int
    public let category: String?
    public let kind: SystemSoundKind

    public var systemSoundId: SystemSoundID {
        SystemSoundID(id)
    }

    public init(
        name: String,
        id: Int,
        category: String? = nil,
        kind: SystemSoundKind = .default
    ) {
        self.name = name
        self.id = id
        self.category = category
        self.kind = kind
    }
}

extension SystemSoundKey {
    public var audioFilePath: String? {
        guard !name.isEmpty else { return nil }
        let directory = "/System/Library/Audio/UISounds/"
        var path = directory
        if kind != .default {
            path += kind.directoryName + "/"
        }
        path += name + ".caf"
        return path
    }
}

extension SystemSoundKey {
    /// InCallSystemSound
    public struct InCallSystemSound: CaseIterable {
        public static let categoryName = "InCallSystemSound"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.ringbackToneAnsi, .ringbackToneCept, .busyToneAnsi, .busyToneCept, .callWaitingToneAnsi, .callWaitingToneCept, .endCallToneCept, .ringbackToneHk, .ringbackToneAus, .ringbackToneUk, .multiwayJoin, .multiwayLeave, .micMute, .micUnmute, .micUnmuteFail, .screenSharingStarted]
        }

        /// ringback_tone_ansi (InCallSystemSound)
        public static let ringbackToneAnsi: Self = .init(
            name: "ringback_tone_ansi",
            id: 30,
            kind: .nano
        )

        /// ringback_tone_cept (InCallSystemSound)
        public static let ringbackToneCept: Self = .init(
            name: "ringback_tone_cept",
            id: 31,
            kind: .nano
        )

        /// busy_tone_ansi (InCallSystemSound)
        public static let busyToneAnsi: Self = .init(
            name: "busy_tone_ansi",
            id: 32,
            kind: .nano
        )

        /// busy_tone_cept (InCallSystemSound)
        public static let busyToneCept: Self = .init(
            name: "busy_tone_cept",
            id: 33,
            kind: .nano
        )

        /// call_waiting_tone_ansi (InCallSystemSound)
        public static let callWaitingToneAnsi: Self = .init(
            name: "call_waiting_tone_ansi",
            id: 34,
            kind: .nano
        )

        /// call_waiting_tone_cept (InCallSystemSound)
        public static let callWaitingToneCept: Self = .init(
            name: "call_waiting_tone_cept",
            id: 35,
            kind: .nano
        )

        /// end_call_tone_cept (InCallSystemSound)
        public static let endCallToneCept: Self = .init(
            name: "end_call_tone_cept",
            id: 36,
            kind: .nano
        )

        /// ringback_tone_hk (InCallSystemSound)
        public static let ringbackToneHk: Self = .init(
            name: "ringback_tone_hk",
            id: 37,
            kind: .nano
        )

        /// ringback_tone_aus (InCallSystemSound)
        public static let ringbackToneAus: Self = .init(
            name: "ringback_tone_aus",
            id: 38,
            kind: .nano
        )

        /// ringback_tone_uk (InCallSystemSound)
        public static let ringbackToneUk: Self = .init(
            name: "ringback_tone_uk",
            id: 39,
            kind: .nano
        )

        /// MultiwayJoin (InCallSystemSound)
        public static let multiwayJoin: Self = .init(
            name: "MultiwayJoin",
            id: 1263, // or 1556
            kind: .nano
        )

        /// MultiwayLeave (InCallSystemSound)
        public static let multiwayLeave: Self = .init(
            name: "MultiwayLeave",
            id: 1264, // or 1557
            kind: .nano
        )

        /// MicMute (InCallSystemSound)
        public static let micMute: Self = .init(
            name: "MicMute",
            id: 1364,
            kind: .nano
        )

        /// MicUnmute (InCallSystemSound)
        public static let micUnmute: Self = .init(
            name: "MicUnmute",
            id: 1365,
            kind: .nano
        )

        /// MicUnmuteFail (InCallSystemSound)
        public static let micUnmuteFail: Self = .init(
            name: "MicUnmuteFail",
            id: 1366,
            kind: .nano
        )

        /// ScreenSharingStarted (InCallSystemSound)
        public static let screenSharingStarted: Self = .init(
            name: "ScreenSharingStarted",
            id: 1367,
            kind: .nano
        )
    }

    public static func inCallSystemSound(_ soundId: InCallSystemSound) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: InCallSystemSound.categoryName,
            kind: soundId.kind
        )
    }

    /// MailReceived
    public struct MailReceived: CaseIterable {
        public static let categoryName = "MailReceived"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.newMail]
        }

        /// new-mail (MailReceived)
        public static let newMail: Self = .init(
            name: "new-mail",
            id: 1000,
            kind: .default
        )
    }

    public static func mailReceived(_ soundId: MailReceived) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: MailReceived.categoryName,
            kind: soundId.kind
        )
    }

    /// MailSent
    public struct MailSent: CaseIterable {
        public static let categoryName = "MailSent"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.mailSent, .tweetSent, .swish]
        }

        /// mail-sent (MailSent)
        public static let mailSent: Self = .init(
            name: "mail-sent",
            id: 1001,
            kind: .default
        )

        /// tweet_sent (MailSent)
        public static let tweetSent: Self = .init(
            name: "tweet_sent",
            id: 1016,
            kind: .default
        )

        /// Swish (MailSent)
        public static let swish: Self = .init(
            name: "Swish",
            id: 1018,
            kind: .default
        )
    }

    public static func mailSent(_ soundId: MailSent) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: MailSent.categoryName,
            kind: soundId.kind
        )
    }

    /// VoicemailReceived
    public struct VoicemailReceived: CaseIterable {
        public static let categoryName = "VoicemailReceived"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.smsReceived1]
        }

        /// sms-received1 (VoicemailReceived)
        public static let smsReceived1: Self = .init(
            name: "sms-received1",
            id: 1002,
            kind: .nano
        )
    }

    public static func voicemailReceived(_ soundId: VoicemailReceived) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: VoicemailReceived.categoryName,
            kind: soundId.kind
        )
    }

    /// SMSReceived
    public struct SmsReceived: CaseIterable {
        public static let categoryName = "SMSReceived"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.receivedMessage]
        }

        /// ReceivedMessage (SMSReceived)
        public static let receivedMessage: Self = .init(
            name: "ReceivedMessage",
            id: 1003,
            kind: .default
        )
    }

    public static func smsReceived(_ soundId: SmsReceived) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: SmsReceived.categoryName,
            kind: soundId.kind
        )
    }

    /// SMSSent
    public struct SmsSent: CaseIterable {
        public static let categoryName = "SMSSent"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.sentMessage]
        }

        /// SentMessage (SMSSent)
        public static let sentMessage: Self = .init(
            name: "SentMessage",
            id: 1004,
            kind: .default
        )
    }

    public static func smsSent(_ soundId: SmsSent) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: SmsSent.categoryName,
            kind: soundId.kind
        )
    }

    /// CalendarAlert
    public struct CalendarAlert: CaseIterable {
        public static let categoryName = "CalendarAlert"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.alarm]
        }

        /// alarm (CalendarAlert)
        public static let alarm: Self = .init(
            name: "alarm",
            id: 1005,
            kind: .default
        )
    }

    public static func calendarAlert(_ soundId: CalendarAlert) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: CalendarAlert.categoryName,
            kind: soundId.kind
        )
    }

    /// low_power (LowPower)
    public static var lowPower: SystemSoundKey {
        .init(
            name: "low_power",
            id: 1006,
            category: "LowPower",
            kind: .default
        )
    }

    /// SMSReceived_Alert
    public struct SmsReceivedAlert: CaseIterable {
        public static let categoryName = "SMSReceived_Alert"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.smsReceived1, .smsReceived2, .smsReceived3, .smsReceived4, .smsReceived5, .smsReceived6, .anticipate, .bloom, .calypso, .chooChoo, .descent, .fanfare, .ladder, .minuet, .newsFlash, .noir, .sherwoodForest, .spell, .suspense, .telegraph, .tiptoes, .typewriters, .update]
        }

        /// sms-received1 (SMSReceived_Alert)
        public static let smsReceived1: Self = .init(
            name: "sms-received1",
            id: 1007, // or 1012
            kind: .nano
        )

        /// sms-received2 (SMSReceived_Alert)
        public static let smsReceived2: Self = .init(
            name: "sms-received2",
            id: 1008,
            kind: .default
        )

        /// sms-received3 (SMSReceived_Alert)
        public static let smsReceived3: Self = .init(
            name: "sms-received3",
            id: 1009,
            kind: .default
        )

        /// sms-received4 (SMSReceived_Alert)
        public static let smsReceived4: Self = .init(
            name: "sms-received4",
            id: 1010,
            kind: .default
        )

        /// sms-received5 (SMSReceived_Alert)
        public static let smsReceived5: Self = .init(
            name: "sms-received5",
            id: 1013,
            kind: .default
        )

        /// sms-received6 (SMSReceived_Alert)
        public static let smsReceived6: Self = .init(
            name: "sms-received6",
            id: 1014,
            kind: .default
        )

        /// Anticipate (SMSReceived_Alert)
        public static let anticipate: Self = .init(
            name: "Anticipate",
            id: 1020,
            kind: .new
        )

        /// Bloom (SMSReceived_Alert)
        public static let bloom: Self = .init(
            name: "Bloom",
            id: 1021,
            kind: .new
        )

        /// Calypso (SMSReceived_Alert)
        public static let calypso: Self = .init(
            name: "Calypso",
            id: 1022,
            kind: .new
        )

        /// Choo_Choo (SMSReceived_Alert)
        public static let chooChoo: Self = .init(
            name: "Choo_Choo",
            id: 1023,
            kind: .new
        )

        /// Descent (SMSReceived_Alert)
        public static let descent: Self = .init(
            name: "Descent",
            id: 1024,
            kind: .new
        )

        /// Fanfare (SMSReceived_Alert)
        public static let fanfare: Self = .init(
            name: "Fanfare",
            id: 1025,
            kind: .new
        )

        /// Ladder (SMSReceived_Alert)
        public static let ladder: Self = .init(
            name: "Ladder",
            id: 1026,
            kind: .new
        )

        /// Minuet (SMSReceived_Alert)
        public static let minuet: Self = .init(
            name: "Minuet",
            id: 1027,
            kind: .new
        )

        /// News_Flash (SMSReceived_Alert)
        public static let newsFlash: Self = .init(
            name: "News_Flash",
            id: 1028,
            kind: .new
        )

        /// Noir (SMSReceived_Alert)
        public static let noir: Self = .init(
            name: "Noir",
            id: 1029,
            kind: .new
        )

        /// Sherwood_Forest (SMSReceived_Alert)
        public static let sherwoodForest: Self = .init(
            name: "Sherwood_Forest",
            id: 1030,
            kind: .new
        )

        /// Spell (SMSReceived_Alert)
        public static let spell: Self = .init(
            name: "Spell",
            id: 1031,
            kind: .new
        )

        /// Suspense (SMSReceived_Alert)
        public static let suspense: Self = .init(
            name: "Suspense",
            id: 1032,
            kind: .new
        )

        /// Telegraph (SMSReceived_Alert)
        public static let telegraph: Self = .init(
            name: "Telegraph",
            id: 1033,
            kind: .new
        )

        /// Tiptoes (SMSReceived_Alert)
        public static let tiptoes: Self = .init(
            name: "Tiptoes",
            id: 1034,
            kind: .new
        )

        /// Typewriters (SMSReceived_Alert)
        public static let typewriters: Self = .init(
            name: "Typewriters",
            id: 1035,
            kind: .new
        )

        /// Update (SMSReceived_Alert)
        public static let update: Self = .init(
            name: "Update",
            id: 1036,
            kind: .new
        )
    }

    public static func smsReceivedAlert(_ soundId: SmsReceivedAlert) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: SmsReceivedAlert.categoryName,
            kind: soundId.kind
        )
    }

    /// SMSReceived_Vibrate
    public struct SmsReceivedVibrate: CaseIterable {
        public static let categoryName = "SMSReceived_Vibrate"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.smsReceivedVibrate]
        }

        ///  (SMSReceived_Vibrate)
        public static let smsReceivedVibrate: Self = .init(
            name: "",
            id: 1011, // or 1311
            kind: .default
        )
    }

    public static func smsReceivedVibrate(_ soundId: SmsReceivedVibrate) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: SmsReceivedVibrate.categoryName,
            kind: soundId.kind
        )
    }

    /// UserAlert
    public struct UserAlert: CaseIterable {
        public static let categoryName = "UserAlert"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.smsReceived1, .userAlert]
        }

        /// sms-received1 (UserAlert)
        public static let smsReceived1: Self = .init(
            name: "sms-received1",
            id: 1015,
            kind: .nano
        )

        ///  (UserAlert)
        public static let userAlert: Self = .init(
            name: "",
            id: 4096,
            kind: .default
        )
    }

    public static func userAlert(_ soundId: UserAlert) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: UserAlert.categoryName,
            kind: soundId.kind
        )
    }

    /// ReminderAlert
    public struct ReminderAlert: CaseIterable {
        public static let categoryName = "ReminderAlert"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.alarm]
        }

        /// alarm (ReminderAlert)
        public static let alarm: Self = .init(
            name: "alarm",
            id: 1017,
            kind: .default
        )
    }

    public static func reminderAlert(_ soundId: ReminderAlert) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: ReminderAlert.categoryName,
            kind: soundId.kind
        )
    }

    /// USSDAlert
    public struct UssdAlert: CaseIterable {
        public static let categoryName = "USSDAlert"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.ussd]
        }

        /// ussd (USSDAlert)
        public static let ussd: Self = .init(
            name: "ussd",
            id: 1050,
            kind: .default
        )
    }

    public static func ussdAlert(_ soundId: UssdAlert) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: UssdAlert.categoryName,
            kind: soundId.kind
        )
    }

    /// SIMToolkitTone
    public struct SimToolkitTone: CaseIterable {
        public static let categoryName = "SIMToolkitTone"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.simToolkitCallDropped, .simToolkitGeneralBeep, .simToolkitNegativeACK, .simToolkitPositiveACK, .simToolkitSMS]
        }

        /// SIMToolkitCallDropped (SIMToolkitTone)
        public static let simToolkitCallDropped: Self = .init(
            name: "SIMToolkitCallDropped",
            id: 1051,
            kind: .default
        )

        /// SIMToolkitGeneralBeep (SIMToolkitTone)
        public static let simToolkitGeneralBeep: Self = .init(
            name: "SIMToolkitGeneralBeep",
            id: 1052,
            kind: .default
        )

        /// SIMToolkitNegativeACK (SIMToolkitTone)
        public static let simToolkitNegativeACK: Self = .init(
            name: "SIMToolkitNegativeACK",
            id: 1053,
            kind: .default
        )

        /// SIMToolkitPositiveACK (SIMToolkitTone)
        public static let simToolkitPositiveACK: Self = .init(
            name: "SIMToolkitPositiveACK",
            id: 1054,
            kind: .default
        )

        /// SIMToolkitSMS (SIMToolkitTone)
        public static let simToolkitSMS: Self = .init(
            name: "SIMToolkitSMS",
            id: 1055,
            kind: .default
        )
    }

    public static func simToolkitTone(_ soundId: SimToolkitTone) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: SimToolkitTone.categoryName,
            kind: soundId.kind
        )
    }

    /// PINKeyPressed
    public struct PinKeyPressed: CaseIterable {
        public static let categoryName = "PINKeyPressed"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.tink]
        }

        /// Tink (PINKeyPressed)
        public static let tink: Self = .init(
            name: "Tink",
            id: 1057,
            kind: .default
        )
    }

    public static func pinKeyPressed(_ soundId: PinKeyPressed) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: PinKeyPressed.categoryName,
            kind: soundId.kind
        )
    }

    /// WebcamStartAlwaysHeard
    public struct WebcamStartAlwaysHeard: CaseIterable {
        public static let categoryName = "WebcamStartAlwaysHeard"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            var result: [Self] = []
            if #available(iOS 16, *) { result.append(.webcamStart) }
            return result
        }

        /// WebcamStart (WebcamStartAlwaysHeard)
        @available(iOS 16, *)
        public static let webcamStart: Self = .init(
            name: "WebcamStart",
            id: 1060,
            kind: .default
        )
    }

    public static func webcamStartAlwaysHeard(_ soundId: WebcamStartAlwaysHeard) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: WebcamStartAlwaysHeard.categoryName,
            kind: soundId.kind
        )
    }

    /// LiquidDetectedAlwaysHeard
    public struct LiquidDetectedAlwaysHeard: CaseIterable {
        public static let categoryName = "LiquidDetectedAlwaysHeard"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            var result: [Self] = []
            if #available(iOS 17, *) { result.append(.liquidDetected) }
            return result
        }

        /// LiquidDetected (LiquidDetectedAlwaysHeard)
        @available(iOS 17, *)
        public static let liquidDetected: Self = .init(
            name: "LiquidDetected",
            id: 1061,
            kind: .default
        )
    }

    public static func liquidDetectedAlwaysHeard(_ soundId: LiquidDetectedAlwaysHeard) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: LiquidDetectedAlwaysHeard.categoryName,
            kind: soundId.kind
        )
    }

    /// AudioToneBusy
    public struct AudioToneBusy: CaseIterable {
        public static let categoryName = "AudioToneBusy"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.ctBusy]
        }

        /// ct-busy (AudioToneBusy)
        public static let ctBusy: Self = .init(
            name: "ct-busy",
            id: 1070,
            kind: .default
        )
    }

    public static func audioToneBusy(_ soundId: AudioToneBusy) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AudioToneBusy.categoryName,
            kind: soundId.kind
        )
    }

    /// AudioToneCongestion
    public struct AudioToneCongestion: CaseIterable {
        public static let categoryName = "AudioToneCongestion"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.ctCongestion]
        }

        /// ct-congestion (AudioToneCongestion)
        public static let ctCongestion: Self = .init(
            name: "ct-congestion",
            id: 1071,
            kind: .default
        )
    }

    public static func audioToneCongestion(_ soundId: AudioToneCongestion) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AudioToneCongestion.categoryName,
            kind: soundId.kind
        )
    }

    /// AudioTonePathAcknowledge
    public struct AudioTonePathAcknowledge: CaseIterable {
        public static let categoryName = "AudioTonePathAcknowledge"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.ctPathAck]
        }

        /// ct-path-ack (AudioTonePathAcknowledge)
        public static let ctPathAck: Self = .init(
            name: "ct-path-ack",
            id: 1072,
            kind: .default
        )
    }

    public static func audioTonePathAcknowledge(_ soundId: AudioTonePathAcknowledge) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AudioTonePathAcknowledge.categoryName,
            kind: soundId.kind
        )
    }

    /// AudioToneError
    public struct AudioToneError: CaseIterable {
        public static let categoryName = "AudioToneError"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.ctError]
        }

        /// ct-error (AudioToneError)
        public static let ctError: Self = .init(
            name: "ct-error",
            id: 1073,
            kind: .default
        )
    }

    public static func audioToneError(_ soundId: AudioToneError) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AudioToneError.categoryName,
            kind: soundId.kind
        )
    }

    /// AudioToneCallWaiting
    public struct AudioToneCallWaiting: CaseIterable {
        public static let categoryName = "AudioToneCallWaiting"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.ctCallWaiting]
        }

        /// ct-call-waiting (AudioToneCallWaiting)
        public static let ctCallWaiting: Self = .init(
            name: "ct-call-waiting",
            id: 1074,
            kind: .nano
        )
    }

    public static func audioToneCallWaiting(_ soundId: AudioToneCallWaiting) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AudioToneCallWaiting.categoryName,
            kind: soundId.kind
        )
    }

    /// AudioToneKey2
    public struct AudioToneKey2: CaseIterable {
        public static let categoryName = "AudioToneKey2"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.ctKeytone2]
        }

        /// ct-keytone2 (AudioToneKey2)
        public static let ctKeytone2: Self = .init(
            name: "ct-keytone2",
            id: 1075,
            kind: .default
        )
    }

    public static func audioToneKey2(_ soundId: AudioToneKey2) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AudioToneKey2.categoryName,
            kind: soundId.kind
        )
    }

    /// ScreenLocked
    public struct ScreenLocked: CaseIterable {
        public static let categoryName = "ScreenLocked"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.lock]
        }

        /// lock (ScreenLocked)
        public static let lock: Self = .init(
            name: "lock",
            id: 1100,
            kind: .default
        )
    }

    public static func screenLocked(_ soundId: ScreenLocked) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: ScreenLocked.categoryName,
            kind: soundId.kind
        )
    }

    ///  (FailedUnlock)
    public static var failedUnlock: SystemSoundKey {
        .init(
            name: "",
            id: 1102,
            category: "FailedUnlock",
            kind: .default
        )
    }

    /// KeyPressed
    public struct KeyPressed: CaseIterable {
        public static let categoryName = "KeyPressed"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.tink, .keyPressClick, .tock, .keyPressDelete, .keyPressModifier, .wheelsOfTime]
        }

        /// Tink (KeyPressed)
        public static let tink: Self = .init(
            name: "Tink",
            id: 1103,
            kind: .default
        )

        /// key_press_click (KeyPressed)
        public static let keyPressClick: Self = .init(
            name: "key_press_click",
            id: 1104,
            kind: .default
        )

        /// Tock (KeyPressed)
        public static let tock: Self = .init(
            name: "Tock",
            id: 1105,
            kind: .default
        )

        /// key_press_delete (KeyPressed)
        public static let keyPressDelete: Self = .init(
            name: "key_press_delete",
            id: 1155,
            kind: .default
        )

        /// key_press_modifier (KeyPressed)
        public static let keyPressModifier: Self = .init(
            name: "key_press_modifier",
            id: 1156,
            kind: .default
        )

        /// wheels_of_time (KeyPressed)
        public static let wheelsOfTime: Self = .init(
            name: "wheels_of_time",
            id: 1157,
            kind: .default
        )
    }

    public static func keyPressed(_ soundId: KeyPressed) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: KeyPressed.categoryName,
            kind: soundId.kind
        )
    }

    /// ConnectedToPower
    public struct ConnectedToPower: CaseIterable {
        public static let categoryName = "ConnectedToPower"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.connectPower]
        }

        /// connect_power (ConnectedToPower)
        public static let connectPower: Self = .init(
            name: "connect_power",
            id: 1106,
            kind: .default
        )
    }

    public static func connectedToPower(_ soundId: ConnectedToPower) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: ConnectedToPower.categoryName,
            kind: soundId.kind
        )
    }

    /// RingerSwitchIndication
    public struct RingerSwitchIndication: CaseIterable {
        public static let categoryName = "RingerSwitchIndication"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.ringerChanged]
        }

        /// RingerChanged (RingerSwitchIndication)
        public static let ringerChanged: Self = .init(
            name: "RingerChanged",
            id: 1107,
            kind: .default
        )
    }

    public static func ringerSwitchIndication(_ soundId: RingerSwitchIndication) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: RingerSwitchIndication.categoryName,
            kind: soundId.kind
        )
    }

    /// CameraShutter
    public struct CameraShutter: CaseIterable {
        public static let categoryName = "CameraShutter"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.photoShutter]
        }

        /// photoShutter (CameraShutter)
        public static let photoShutter: Self = .init(
            name: "photoShutter",
            id: 1108,
            kind: .default
        )
    }

    public static func cameraShutter(_ soundId: CameraShutter) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: CameraShutter.categoryName,
            kind: soundId.kind
        )
    }

    /// ShakeToShuffle
    public struct ShakeToShuffle: CaseIterable {
        public static let categoryName = "ShakeToShuffle"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.shake]
        }

        /// shake (ShakeToShuffle)
        public static let shake: Self = .init(
            name: "shake",
            id: 1109,
            kind: .default
        )
    }

    public static func shakeToShuffle(_ soundId: ShakeToShuffle) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: ShakeToShuffle.categoryName,
            kind: soundId.kind
        )
    }

    /// jbl_begin (JBL_Begin)
    public static var jblBegin: SystemSoundKey {
        .init(
            name: "jbl_begin",
            id: 1110,
            category: "JBL_Begin",
            kind: .default
        )
    }

    /// jbl_confirm (JBL_Confirm)
    public static var jblConfirm: SystemSoundKey {
        .init(
            name: "jbl_confirm",
            id: 1111,
            category: "JBL_Confirm",
            kind: .default
        )
    }

    /// jbl_cancel (JBL_Cancel)
    public static var jblCancel: SystemSoundKey {
        .init(
            name: "jbl_cancel",
            id: 1112,
            category: "JBL_Cancel",
            kind: .default
        )
    }

    /// BeginRecording
    public struct BeginRecording: CaseIterable {
        public static let categoryName = "BeginRecording"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.beginRecord]
        }

        /// begin_record (BeginRecording)
        public static let beginRecord: Self = .init(
            name: "begin_record",
            id: 1113,
            kind: .default
        )
    }

    public static func beginRecording(_ soundId: BeginRecording) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: BeginRecording.categoryName,
            kind: soundId.kind
        )
    }

    /// EndRecording
    public struct EndRecording: CaseIterable {
        public static let categoryName = "EndRecording"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.endRecord]
        }

        /// end_record (EndRecording)
        public static let endRecord: Self = .init(
            name: "end_record",
            id: 1114,
            kind: .default
        )
    }

    public static func endRecording(_ soundId: EndRecording) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: EndRecording.categoryName,
            kind: soundId.kind
        )
    }

    /// jbl_ambiguous (JBL_Ambiguous)
    public static var jblAmbiguous: SystemSoundKey {
        .init(
            name: "jbl_ambiguous",
            id: 1115,
            category: "JBL_Ambiguous",
            kind: .default
        )
    }

    /// jbl_no_match (JBL_NoMatch)
    public static var jblNoMatch: SystemSoundKey {
        .init(
            name: "jbl_no_match",
            id: 1116,
            category: "JBL_NoMatch",
            kind: .default
        )
    }

    /// BeginVideoRecordingAlwaysHeard
    public struct BeginVideoRecordingAlwaysHeard: CaseIterable {
        public static let categoryName = "BeginVideoRecordingAlwaysHeard"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.beginRecord]
        }

        /// begin_record (BeginVideoRecordingAlwaysHeard)
        public static let beginRecord: Self = .init(
            name: "begin_record",
            id: 1117,
            kind: .default
        )
    }

    public static func beginVideoRecordingAlwaysHeard(_ soundId: BeginVideoRecordingAlwaysHeard) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: BeginVideoRecordingAlwaysHeard.categoryName,
            kind: soundId.kind
        )
    }

    /// EndVideoRecordingAlwaysHeard
    public struct EndVideoRecordingAlwaysHeard: CaseIterable {
        public static let categoryName = "EndVideoRecordingAlwaysHeard"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.endRecord]
        }

        /// end_record (EndVideoRecordingAlwaysHeard)
        public static let endRecord: Self = .init(
            name: "end_record",
            id: 1118,
            kind: .default
        )
    }

    public static func endVideoRecordingAlwaysHeard(_ soundId: EndVideoRecordingAlwaysHeard) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: EndVideoRecordingAlwaysHeard.categoryName,
            kind: soundId.kind
        )
    }

    /// CameraShutterAlt
    public struct CameraShutterAlt: CaseIterable {
        public static let categoryName = "CameraShutterAlt"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.cameraShutterBurst, .cameraShutterBurstBegin, .cameraShutterBurstEnd, .cameraTimerFinalSecond, .cameraTimerCountdown]
        }

        /// camera_shutter_burst (CameraShutterAlt)
        public static let cameraShutterBurst: Self = .init(
            name: "camera_shutter_burst",
            id: 1119,
            kind: .modern
        )

        /// camera_shutter_burst_begin (CameraShutterAlt)
        public static let cameraShutterBurstBegin: Self = .init(
            name: "camera_shutter_burst_begin",
            id: 1121,
            kind: .modern
        )

        /// camera_shutter_burst_end (CameraShutterAlt)
        public static let cameraShutterBurstEnd: Self = .init(
            name: "camera_shutter_burst_end",
            id: 1122,
            kind: .modern
        )

        /// camera_timer_final_second (CameraShutterAlt)
        public static let cameraTimerFinalSecond: Self = .init(
            name: "camera_timer_final_second",
            id: 1260,
            kind: .default
        )

        /// camera_timer_countdown (CameraShutterAlt)
        public static let cameraTimerCountdown: Self = .init(
            name: "camera_timer_countdown",
            id: 1261,
            kind: .default
        )
    }

    public static func cameraShutterAlt(_ soundId: CameraShutterAlt) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: CameraShutterAlt.categoryName,
            kind: soundId.kind
        )
    }

    /// AirDropInvitation
    public struct AirDropInvitation: CaseIterable {
        public static let categoryName = "AirDropInvitation"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            var result: [Self] = []
            if #available(iOS 17, *) { result.append(.airdropInvite) }
            return result
        }

        /// airdrop_invite (AirDropInvitation)
        @available(iOS 17, *)
        public static let airdropInvite: Self = .init(
            name: "airdrop_invite",
            id: 1120,
            kind: .modern
        )
    }

    public static func airDropInvitation(_ soundId: AirDropInvitation) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AirDropInvitation.categoryName,
            kind: soundId.kind
        )
    }

    /// KeyPressClick_Remote
    public struct KeyPressClickRemote: CaseIterable {
        public static let categoryName = "KeyPressClick_Remote"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.keyPressClick]
        }

        /// key_press_click (KeyPressClick_Remote)
        public static let keyPressClick: Self = .init(
            name: "key_press_click",
            id: 1123,
            kind: .default
        )
    }

    public static func keyPressClickRemote(_ soundId: KeyPressClickRemote) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: KeyPressClickRemote.categoryName,
            kind: soundId.kind
        )
    }

    /// vc~invitation-accepted (VCInvitationAccepted)
    public static var vcInvitationAccepted: SystemSoundKey {
        .init(
            name: "vc~invitation-accepted",
            id: 1150,
            category: "VCInvitationAccepted",
            kind: .nano
        )
    }

    /// vc~ringing (VCRinging)
    public static var vcRinging: SystemSoundKey {
        .init(
            name: "vc~ringing",
            id: 1151,
            category: "VCRinging",
            kind: .nano
        )
    }

    /// vc~ended (VCEnded)
    public static var vcEnded: SystemSoundKey {
        .init(
            name: "vc~ended",
            id: 1152,
            category: "VCEnded",
            kind: .nano
        )
    }

    /// VCCallWaiting
    public struct VcCallWaiting: CaseIterable {
        public static let categoryName = "VCCallWaiting"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.ctCallWaiting]
        }

        /// ct-call-waiting (VCCallWaiting)
        public static let ctCallWaiting: Self = .init(
            name: "ct-call-waiting",
            id: 1153,
            kind: .nano
        )
    }

    public static func vcCallWaiting(_ soundId: VcCallWaiting) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: VcCallWaiting.categoryName,
            kind: soundId.kind
        )
    }

    /// VCCallUpgrade
    public struct VcCallUpgrade: CaseIterable {
        public static let categoryName = "VCCallUpgrade"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.vcRinging]
        }

        /// vc~ringing (VCCallUpgrade)
        public static let vcRinging: Self = .init(
            name: "vc~ringing",
            id: 1154,
            kind: .nano
        )
    }

    public static func vcCallUpgrade(_ soundId: VcCallUpgrade) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: VcCallUpgrade.categoryName,
            kind: soundId.kind
        )
    }

    /// go_to_sleep_alert (GoToSleep_Alert)
    public static var goToSleepAlert: SystemSoundKey {
        .init(
            name: "go_to_sleep_alert",
            id: 1158,
            category: "GoToSleep_Alert",
            kind: .default
        )
    }

    /// warsaw (Warsaw)
    public static var warsaw: SystemSoundKey {
        .init(
            name: "warsaw",
            id: 1159,
            category: "Warsaw",
            kind: .default
        )
    }

    /// PaymentSuccess
    public struct PaymentSuccess: CaseIterable {
        public static let categoryName = "PaymentSuccess"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.nfcScanComplete, .accessScanComplete, .paymentSuccess]
        }

        /// nfc_scan_complete (PaymentSuccess)
        public static let nfcScanComplete: Self = .init(
            name: "nfc_scan_complete",
            id: 1160,
            kind: .default
        )

        /// access_scan_complete (PaymentSuccess)
        public static let accessScanComplete: Self = .init(
            name: "access_scan_complete",
            id: 1163,
            kind: .default
        )

        /// payment_success (PaymentSuccess)
        public static let paymentSuccess: Self = .init(
            name: "payment_success",
            id: 1394,
            kind: .default
        )
    }

    public static func paymentSuccess(_ soundId: PaymentSuccess) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: PaymentSuccess.categoryName,
            kind: soundId.kind
        )
    }

    ///  (PearlSuccess)
    public static var pearlSuccess: SystemSoundKey {
        .init(
            name: "",
            id: 1161,
            category: "PearlSuccess",
            kind: .default
        )
    }

    ///  (PearlFailure)
    public static var pearlFailure: SystemSoundKey {
        .init(
            name: "",
            id: 1162,
            category: "PearlFailure",
            kind: .default
        )
    }

    ///  (USBHardening_Alert)
    public static var usbHardeningAlert: SystemSoundKey {
        .init(
            name: "",
            id: 1164,
            category: "USBHardening_Alert",
            kind: .default
        )
    }

    /// Critical_Alert
    public struct CriticalAlert: CaseIterable {
        public static let categoryName = "Critical_Alert"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [._3rdPartyCritical]
        }

        /// 3rd_party_critical (Critical_Alert)
        public static let _3rdPartyCritical: Self = .init(
            name: "3rd_party_critical",
            id: 1165,
            kind: .default
        )
    }

    public static func criticalAlert(_ soundId: CriticalAlert) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: CriticalAlert.categoryName,
            kind: soundId.kind
        )
    }

    /// PaymentReceived (PaymentReceived)
    public static var paymentReceived: SystemSoundKey {
        .init(
            name: "PaymentReceived",
            id: 1166,
            category: "PaymentReceived",
            kind: .default
        )
    }

    /// Doorbell (Doorbell)
    @available(iOS 16, *)
    public static var doorbell: SystemSoundKey {
        .init(
            name: "Doorbell",
            id: 1167,
            category: "Doorbell",
            kind: .default
        )
    }

    /// PaymentReceivedFailure (PaymentReceivedFailure)
    @available(iOS 16, *)
    public static var paymentReceivedFailure: SystemSoundKey {
        .init(
            name: "PaymentReceivedFailure",
            id: 1168,
            category: "PaymentReceivedFailure",
            kind: .default
        )
    }

    /// EarInteraction_Complete (EarInteraction_Complete)
    @available(iOS 18.1, *)
    public static var earInteractionComplete: SystemSoundKey {
        .init(
            name: "EarInteraction_Complete",
            id: 1169,
            category: "EarInteraction_Complete",
            kind: .default
        )
    }

    ///  (Time_To_Run)
    @available(iOS 16, *)
    public static var timeToRun: SystemSoundKey {
        .init(
            name: "",
            id: 1174,
            category: "Time_To_Run",
            kind: .default
        )
    }

    ///  (Time_To_Walk)
    @available(iOS 16, *)
    public static var timeToWalk: SystemSoundKey {
        .init(
            name: "",
            id: 1175,
            category: "Time_To_Walk",
            kind: .default
        )
    }

    /// TouchTone
    public struct TouchTone: CaseIterable {
        public static let categoryName = "TouchTone"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.dtmf0, .dtmf1, .dtmf2, .dtmf3, .dtmf4, .dtmf5, .dtmf6, .dtmf7, .dtmf8, .dtmf9, .dtmfStar, .dtmfPound]
        }

        /// dtmf-0 (TouchTone)
        public static let dtmf0: Self = .init(
            name: "dtmf-0",
            id: 1200,
            kind: .nano
        )

        /// dtmf-1 (TouchTone)
        public static let dtmf1: Self = .init(
            name: "dtmf-1",
            id: 1201,
            kind: .nano
        )

        /// dtmf-2 (TouchTone)
        public static let dtmf2: Self = .init(
            name: "dtmf-2",
            id: 1202,
            kind: .nano
        )

        /// dtmf-3 (TouchTone)
        public static let dtmf3: Self = .init(
            name: "dtmf-3",
            id: 1203,
            kind: .nano
        )

        /// dtmf-4 (TouchTone)
        public static let dtmf4: Self = .init(
            name: "dtmf-4",
            id: 1204,
            kind: .nano
        )

        /// dtmf-5 (TouchTone)
        public static let dtmf5: Self = .init(
            name: "dtmf-5",
            id: 1205,
            kind: .nano
        )

        /// dtmf-6 (TouchTone)
        public static let dtmf6: Self = .init(
            name: "dtmf-6",
            id: 1206,
            kind: .nano
        )

        /// dtmf-7 (TouchTone)
        public static let dtmf7: Self = .init(
            name: "dtmf-7",
            id: 1207,
            kind: .nano
        )

        /// dtmf-8 (TouchTone)
        public static let dtmf8: Self = .init(
            name: "dtmf-8",
            id: 1208,
            kind: .nano
        )

        /// dtmf-9 (TouchTone)
        public static let dtmf9: Self = .init(
            name: "dtmf-9",
            id: 1209,
            kind: .nano
        )

        /// dtmf-star (TouchTone)
        public static let dtmfStar: Self = .init(
            name: "dtmf-star",
            id: 1210,
            kind: .nano
        )

        /// dtmf-pound (TouchTone)
        public static let dtmfPound: Self = .init(
            name: "dtmf-pound",
            id: 1211,
            kind: .nano
        )
    }

    public static func touchTone(_ soundId: TouchTone) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: TouchTone.categoryName,
            kind: soundId.kind
        )
    }

    /// DeviceShutdown (DeviceShutdown)
    @available(iOS 16, *)
    public static var deviceShutdown: SystemSoundKey {
        .init(
            name: "DeviceShutdown",
            id: 1253,
            category: "DeviceShutdown",
            kind: .default
        )
    }

    /// Headset_StartCall
    public struct HeadsetStartCall: CaseIterable {
        public static let categoryName = "Headset_StartCall"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.longLowShortHigh]
        }

        /// long_low_short_high (Headset_StartCall)
        public static let longLowShortHigh: Self = .init(
            name: "long_low_short_high",
            id: 1254,
            kind: .default
        )
    }

    public static func headsetStartCall(_ soundId: HeadsetStartCall) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: HeadsetStartCall.categoryName,
            kind: soundId.kind
        )
    }

    /// Headset_Redial
    public struct HeadsetRedial: CaseIterable {
        public static let categoryName = "Headset_Redial"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.shortDoubleHigh]
        }

        /// short_double_high (Headset_Redial)
        public static let shortDoubleHigh: Self = .init(
            name: "short_double_high",
            id: 1255,
            kind: .default
        )
    }

    public static func headsetRedial(_ soundId: HeadsetRedial) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: HeadsetRedial.categoryName,
            kind: soundId.kind
        )
    }

    /// Headset_AnswerCall
    public struct HeadsetAnswerCall: CaseIterable {
        public static let categoryName = "Headset_AnswerCall"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.shortLowHigh]
        }

        /// short_low_high (Headset_AnswerCall)
        public static let shortLowHigh: Self = .init(
            name: "short_low_high",
            id: 1256,
            kind: .default
        )
    }

    public static func headsetAnswerCall(_ soundId: HeadsetAnswerCall) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: HeadsetAnswerCall.categoryName,
            kind: soundId.kind
        )
    }

    /// Headset_EndCall
    public struct HeadsetEndCall: CaseIterable {
        public static let categoryName = "Headset_EndCall"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.shortDoubleLow]
        }

        /// short_double_low (Headset_EndCall)
        public static let shortDoubleLow: Self = .init(
            name: "short_double_low",
            id: 1257,
            kind: .default
        )
    }

    public static func headsetEndCall(_ soundId: HeadsetEndCall) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: HeadsetEndCall.categoryName,
            kind: soundId.kind
        )
    }

    /// Headset_CallWaitingActions
    public struct HeadsetCallWaitingActions: CaseIterable {
        public static let categoryName = "Headset_CallWaitingActions"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.shortDoubleLow]
        }

        /// short_double_low (Headset_CallWaitingActions)
        public static let shortDoubleLow: Self = .init(
            name: "short_double_low",
            id: 1258,
            kind: .default
        )
    }

    public static func headsetCallWaitingActions(_ soundId: HeadsetCallWaitingActions) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: HeadsetCallWaitingActions.categoryName,
            kind: soundId.kind
        )
    }

    /// Headset_TransitionEnd
    public struct HeadsetTransitionEnd: CaseIterable {
        public static let categoryName = "Headset_TransitionEnd"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.middle9ShortDoubleLow]
        }

        /// middle_9_short_double_low (Headset_TransitionEnd)
        public static let middle9ShortDoubleLow: Self = .init(
            name: "middle_9_short_double_low",
            id: 1259,
            kind: .default
        )
    }

    public static func headsetTransitionEnd(_ soundId: HeadsetTransitionEnd) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: HeadsetTransitionEnd.categoryName,
            kind: soundId.kind
        )
    }

    /// Health_Alert
    public struct HealthAlert: CaseIterable {
        public static let categoryName = "Health_Alert"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.healthNotification]
        }

        /// health_notification (Health_Alert)
        public static let healthNotification: Self = .init(
            name: "health_notification",
            id: 1262,
            kind: .default
        )
    }

    public static func healthAlert(_ soundId: HealthAlert) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: HealthAlert.categoryName,
            kind: soundId.kind
        )
    }

    /// VCGroupInvitation_Alert
    public struct VcGroupInvitationAlert: CaseIterable {
        public static let categoryName = "VCGroupInvitation_Alert"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.multiwayInvitation]
        }

        /// multiway_invitation (VCGroupInvitation_Alert)
        public static let multiwayInvitation: Self = .init(
            name: "multiway_invitation",
            id: 1265,
            kind: .default
        )
    }

    public static func vcGroupInvitationAlert(_ soundId: VcGroupInvitationAlert) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: VcGroupInvitationAlert.categoryName,
            kind: soundId.kind
        )
    }

    /// PushToTalkJoined (PushToTalkJoined)
    @available(iOS 16.2, *)
    public static var pushToTalkJoined: SystemSoundKey {
        .init(
            name: "PushToTalkJoined",
            id: 1270,
            category: "PushToTalkJoined",
            kind: .nano
        )
    }

    /// PushToTalkLeft (PushToTalkLeft)
    @available(iOS 16.2, *)
    public static var pushToTalkLeft: SystemSoundKey {
        .init(
            name: "PushToTalkLeft",
            id: 1271,
            category: "PushToTalkLeft",
            kind: .nano
        )
    }

    /// PushToTalkUnmute (PushToTalkUnmute)
    @available(iOS 16.2, *)
    public static var pushToTalkUnmute: SystemSoundKey {
        .init(
            name: "PushToTalkUnmute",
            id: 1272,
            category: "PushToTalkUnmute",
            kind: .nano
        )
    }

    /// PushToTalkMute (PushToTalkMute)
    @available(iOS 16.2, *)
    public static var pushToTalkMute: SystemSoundKey {
        .init(
            name: "PushToTalkMute",
            id: 1273,
            category: "PushToTalkMute",
            kind: .nano
        )
    }

    /// PushToTalkUnmuteFail (PushToTalkUnmuteFail)
    @available(iOS 16.2, *)
    public static var pushToTalkUnmuteFail: SystemSoundKey {
        .init(
            name: "PushToTalkUnmuteFail",
            id: 1274,
            category: "PushToTalkUnmuteFail",
            kind: .nano
        )
    }

    /// IDCard_Sender_Confirmation
    public struct IdCardSenderConfirmation: CaseIterable {
        public static let categoryName = "IDCard_Sender_Confirmation"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            var result: [Self] = []
            if #available(iOS 17, *) { result.append(.senderConfirmation) }
            return result
        }

        /// SenderConfirmation (IDCard_Sender_Confirmation)
        @available(iOS 17, *)
        public static let senderConfirmation: Self = .init(
            name: "SenderConfirmation",
            id: 1275,
            kind: .nano
        )
    }

    public static func idCardSenderConfirmation(_ soundId: IdCardSenderConfirmation) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: IdCardSenderConfirmation.categoryName,
            kind: soundId.kind
        )
    }

    /// IDCard_Receiver_Confirmation
    public struct IdCardReceiverConfirmation: CaseIterable {
        public static let categoryName = "IDCard_Receiver_Confirmation"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            var result: [Self] = []
            if #available(iOS 17, *) { result.append(.receiverConfirmation) }
            return result
        }

        /// ReceiverConfirmation (IDCard_Receiver_Confirmation)
        @available(iOS 17, *)
        public static let receiverConfirmation: Self = .init(
            name: "ReceiverConfirmation",
            id: 1276,
            kind: .nano
        )
    }

    public static func idCardReceiverConfirmation(_ soundId: IdCardReceiverConfirmation) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: IdCardReceiverConfirmation.categoryName,
            kind: soundId.kind
        )
    }

    /// IDCard_Receiver_Connect
    public struct IdCardReceiverConnect: CaseIterable {
        public static let categoryName = "IDCard_Receiver_Connect"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            var result: [Self] = []
            if #available(iOS 17, *) { result.append(.receiverConnect) }
            return result
        }

        /// ReceiverConnect (IDCard_Receiver_Connect)
        @available(iOS 17, *)
        public static let receiverConnect: Self = .init(
            name: "ReceiverConnect",
            id: 1277,
            kind: .nano
        )
    }

    public static func idCardReceiverConnect(_ soundId: IdCardReceiverConnect) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: IdCardReceiverConnect.categoryName,
            kind: soundId.kind
        )
    }

    ///  (DictationBegin)
    @available(iOS 18, *)
    public static var dictationBegin: SystemSoundKey {
        .init(
            name: "",
            id: 1278,
            category: "DictationBegin",
            kind: .default
        )
    }

    ///  (DictationCancel)
    @available(iOS 18, *)
    public static var dictationCancel: SystemSoundKey {
        .init(
            name: "",
            id: 1279,
            category: "DictationCancel",
            kind: .default
        )
    }

    ///  (DictationConfirm)
    @available(iOS 18, *)
    public static var dictationConfirm: SystemSoundKey {
        .init(
            name: "",
            id: 1280,
            category: "DictationConfirm",
            kind: .default
        )
    }

    /// SystemSoundPreview_IgnoreRingerSwitch
    public struct SystemSoundPreviewIgnoreRingerSwitch: CaseIterable {
        public static let categoryName = "SystemSoundPreview_IgnoreRingerSwitch"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.smsReceived1, .receivedMessage, .newMail, .mailSent, .alarm]
        }

        /// sms-received1 (SystemSoundPreview_IgnoreRingerSwitch)
        public static let smsReceived1: Self = .init(
            name: "sms-received1",
            id: 1300,
            kind: .nano
        )

        /// ReceivedMessage (SystemSoundPreview_IgnoreRingerSwitch)
        public static let receivedMessage: Self = .init(
            name: "ReceivedMessage",
            id: 1301,
            kind: .default
        )

        /// new-mail (SystemSoundPreview_IgnoreRingerSwitch)
        public static let newMail: Self = .init(
            name: "new-mail",
            id: 1302,
            kind: .default
        )

        /// mail-sent (SystemSoundPreview_IgnoreRingerSwitch)
        public static let mailSent: Self = .init(
            name: "mail-sent",
            id: 1303,
            kind: .default
        )

        /// alarm (SystemSoundPreview_IgnoreRingerSwitch)
        public static let alarm: Self = .init(
            name: "alarm",
            id: 1304, // or 1317
            kind: .default
        )
    }

    public static func systemSoundPreviewIgnoreRingerSwitch(_ soundId: SystemSoundPreviewIgnoreRingerSwitch) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: SystemSoundPreviewIgnoreRingerSwitch.categoryName,
            kind: soundId.kind
        )
    }

    /// SystemSoundPreview
    public struct SystemSoundPreview: CaseIterable {
        public static let categoryName = "SystemSoundPreview"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.lock, .smsReceived1]
        }

        /// lock (SystemSoundPreview)
        public static let lock: Self = .init(
            name: "lock",
            id: 1305,
            kind: .default
        )

        /// sms-received1 (SystemSoundPreview)
        public static let smsReceived1: Self = .init(
            name: "sms-received1",
            id: 1315,
            kind: .nano
        )
    }

    public static func systemSoundPreview(_ soundId: SystemSoundPreview) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: SystemSoundPreview.categoryName,
            kind: soundId.kind
        )
    }

    /// KeyPressClickPreview
    public struct KeyPressClickPreview: CaseIterable {
        public static let categoryName = "KeyPressClickPreview"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.keyPressClick]
        }

        /// key_press_click (KeyPressClickPreview)
        public static let keyPressClick: Self = .init(
            name: "key_press_click",
            id: 1306,
            kind: .default
        )
    }

    public static func keyPressClickPreview(_ soundId: KeyPressClickPreview) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: KeyPressClickPreview.categoryName,
            kind: soundId.kind
        )
    }

    /// SMSReceived_Selection
    public struct SmsReceivedSelection: CaseIterable {
        public static let categoryName = "SMSReceived_Selection"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.smsReceived1, .smsReceived2, .smsReceived3, .smsReceived4, .smsReceived5, .smsReceived6, .anticipate, .bloom, .calypso, .chooChoo, .descent, .fanfare, .ladder, .minuet, .newsFlash, .noir, .sherwoodForest, .spell, .suspense, .telegraph, .tiptoes, .typewriters, .update]
        }

        /// sms-received1 (SMSReceived_Selection)
        public static let smsReceived1: Self = .init(
            name: "sms-received1",
            id: 1307, // or 1312
            kind: .nano
        )

        /// sms-received2 (SMSReceived_Selection)
        public static let smsReceived2: Self = .init(
            name: "sms-received2",
            id: 1308,
            kind: .default
        )

        /// sms-received3 (SMSReceived_Selection)
        public static let smsReceived3: Self = .init(
            name: "sms-received3",
            id: 1309,
            kind: .default
        )

        /// sms-received4 (SMSReceived_Selection)
        public static let smsReceived4: Self = .init(
            name: "sms-received4",
            id: 1310,
            kind: .default
        )

        /// sms-received5 (SMSReceived_Selection)
        public static let smsReceived5: Self = .init(
            name: "sms-received5",
            id: 1313,
            kind: .default
        )

        /// sms-received6 (SMSReceived_Selection)
        public static let smsReceived6: Self = .init(
            name: "sms-received6",
            id: 1314,
            kind: .default
        )

        /// Anticipate (SMSReceived_Selection)
        public static let anticipate: Self = .init(
            name: "Anticipate",
            id: 1320,
            kind: .new
        )

        /// Bloom (SMSReceived_Selection)
        public static let bloom: Self = .init(
            name: "Bloom",
            id: 1321,
            kind: .new
        )

        /// Calypso (SMSReceived_Selection)
        public static let calypso: Self = .init(
            name: "Calypso",
            id: 1322,
            kind: .new
        )

        /// Choo_Choo (SMSReceived_Selection)
        public static let chooChoo: Self = .init(
            name: "Choo_Choo",
            id: 1323,
            kind: .new
        )

        /// Descent (SMSReceived_Selection)
        public static let descent: Self = .init(
            name: "Descent",
            id: 1324,
            kind: .new
        )

        /// Fanfare (SMSReceived_Selection)
        public static let fanfare: Self = .init(
            name: "Fanfare",
            id: 1325,
            kind: .new
        )

        /// Ladder (SMSReceived_Selection)
        public static let ladder: Self = .init(
            name: "Ladder",
            id: 1326,
            kind: .new
        )

        /// Minuet (SMSReceived_Selection)
        public static let minuet: Self = .init(
            name: "Minuet",
            id: 1327,
            kind: .new
        )

        /// News_Flash (SMSReceived_Selection)
        public static let newsFlash: Self = .init(
            name: "News_Flash",
            id: 1328,
            kind: .new
        )

        /// Noir (SMSReceived_Selection)
        public static let noir: Self = .init(
            name: "Noir",
            id: 1329,
            kind: .new
        )

        /// Sherwood_Forest (SMSReceived_Selection)
        public static let sherwoodForest: Self = .init(
            name: "Sherwood_Forest",
            id: 1330,
            kind: .new
        )

        /// Spell (SMSReceived_Selection)
        public static let spell: Self = .init(
            name: "Spell",
            id: 1331,
            kind: .new
        )

        /// Suspense (SMSReceived_Selection)
        public static let suspense: Self = .init(
            name: "Suspense",
            id: 1332,
            kind: .new
        )

        /// Telegraph (SMSReceived_Selection)
        public static let telegraph: Self = .init(
            name: "Telegraph",
            id: 1333,
            kind: .new
        )

        /// Tiptoes (SMSReceived_Selection)
        public static let tiptoes: Self = .init(
            name: "Tiptoes",
            id: 1334,
            kind: .new
        )

        /// Typewriters (SMSReceived_Selection)
        public static let typewriters: Self = .init(
            name: "Typewriters",
            id: 1335,
            kind: .new
        )

        /// Update (SMSReceived_Selection)
        public static let update: Self = .init(
            name: "Update",
            id: 1336,
            kind: .new
        )
    }

    public static func smsReceivedSelection(_ soundId: SmsReceivedSelection) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: SmsReceivedSelection.categoryName,
            kind: soundId.kind
        )
    }

    /// SystemSoundPreview_IgnoreRingerSwitch_NoVibe
    public struct SystemSoundPreviewIgnoreRingerSwitchNoVibe: CaseIterable {
        public static let categoryName = "SystemSoundPreview_IgnoreRingerSwitch_NoVibe"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.swish]
        }

        /// Swish (SystemSoundPreview_IgnoreRingerSwitch_NoVibe)
        public static let swish: Self = .init(
            name: "Swish",
            id: 1318,
            kind: .default
        )
    }

    public static func systemSoundPreviewIgnoreRingerSwitchNoVibe(_ soundId: SystemSoundPreviewIgnoreRingerSwitchNoVibe) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: SystemSoundPreviewIgnoreRingerSwitchNoVibe.categoryName,
            kind: soundId.kind
        )
    }

    /// PINEnterDigit_AX (PINEnterDigit_AX)
    @available(iOS 16, *)
    public static var pinEnterDigitAX: SystemSoundKey {
        .init(
            name: "PINEnterDigit_AX",
            id: 1340,
            category: "PINEnterDigit_AX",
            kind: .default
        )
    }

    /// PINDelete_AX (PINDelete_AX)
    @available(iOS 16, *)
    public static var pinDeleteAX: SystemSoundKey {
        .init(
            name: "PINDelete_AX",
            id: 1341,
            category: "PINDelete_AX",
            kind: .default
        )
    }

    /// PINSubmit_AX (PINSubmit_AX)
    @available(iOS 16, *)
    public static var pinSubmitAX: SystemSoundKey {
        .init(
            name: "PINSubmit_AX",
            id: 1342,
            category: "PINSubmit_AX",
            kind: .default
        )
    }

    /// PINUnexpected (PINUnexpected)
    @available(iOS 16, *)
    public static var pinUnexpected: SystemSoundKey {
        .init(
            name: "PINUnexpected",
            id: 1343,
            category: "PINUnexpected",
            kind: .default
        )
    }

    /// PINEnterDigit (PINEnterDigit)
    @available(iOS 16, *)
    public static var pinEnterDigit: SystemSoundKey {
        .init(
            name: "PINEnterDigit",
            id: 1344,
            category: "PINEnterDigit",
            kind: .default
        )
    }

    /// PINDelete (PINDelete)
    @available(iOS 16, *)
    public static var pinDelete: SystemSoundKey {
        .init(
            name: "PINDelete",
            id: 1345,
            category: "PINDelete",
            kind: .default
        )
    }

    ///  (RingerVibeChanged)
    public static var ringerVibeChanged: SystemSoundKey {
        .init(
            name: "",
            id: 1350,
            category: "RingerVibeChanged",
            kind: .default
        )
    }

    ///  (SilentVibeChanged)
    public static var silentVibeChanged: SystemSoundKey {
        .init(
            name: "",
            id: 1351,
            category: "SilentVibeChanged",
            kind: .default
        )
    }

    ///  (VibrateAlways)
    public static var vibrateAlways: SystemSoundKey {
        .init(
            name: "",
            id: 1352,
            category: "VibrateAlways",
            kind: .default
        )
    }

    /// HeadphoneAudioExposureLimitExceeded (HeadphoneAudioExposureLimitExceeded)
    public static var headphoneAudioExposureLimitExceeded: SystemSoundKey {
        .init(
            name: "HeadphoneAudioExposureLimitExceeded",
            id: 1362,
            category: "HeadphoneAudioExposureLimitExceeded",
            kind: .nano
        )
    }

    /// HealthNotificationUrgent (HealthNotificationUrgent)
    public static var healthNotificationUrgent: SystemSoundKey {
        .init(
            name: "HealthNotificationUrgent",
            id: 1363,
            category: "HealthNotificationUrgent",
            kind: .nano
        )
    }

    /// NavigationGenericManeuver (NavigationGenericManeuver)
    public static var navigationGenericManeuver: SystemSoundKey {
        .init(
            name: "NavigationGenericManeuver",
            id: 1370,
            category: "NavigationGenericManeuver",
            kind: .default
        )
    }

    /// PaymentFailure
    public struct PaymentFailure: CaseIterable {
        public static let categoryName = "PaymentFailure"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.paymentFailure, .nfcScanFailure]
        }

        /// payment_failure (PaymentFailure)
        public static let paymentFailure: Self = .init(
            name: "payment_failure",
            id: 1395,
            kind: .default
        )

        /// nfc_scan_failure (PaymentFailure)
        public static let nfcScanFailure: Self = .init(
            name: "nfc_scan_failure",
            id: 1398,
            kind: .default
        )
    }

    public static func paymentFailure(_ soundId: PaymentFailure) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: PaymentFailure.categoryName,
            kind: soundId.kind
        )
    }

    /// Notification_Haptic (Notification_Haptic)
    public static var notificationHaptic: SystemSoundKey {
        .init(
            name: "Notification_Haptic",
            id: 1400,
            category: "Notification_Haptic",
            kind: .nano
        )
    }

    /// Ringtone_US_Haptic (Ringtone_US_Haptic)
    public static var ringtoneUSHaptic: SystemSoundKey {
        .init(
            name: "Ringtone_US_Haptic",
            id: 1401,
            category: "Ringtone_US_Haptic",
            kind: .nano
        )
    }

    /// Ringtone_UK_Haptic (Ringtone_UK_Haptic)
    public static var ringtoneUKHaptic: SystemSoundKey {
        .init(
            name: "Ringtone_UK_Haptic",
            id: 1402,
            category: "Ringtone_UK_Haptic",
            kind: .nano
        )
    }

    /// Alarm_Haptic (Alarm_Haptic)
    public static var alarmHaptic: SystemSoundKey {
        .init(
            name: "Alarm_Haptic",
            id: 1403,
            category: "Alarm_Haptic",
            kind: .nano
        )
    }

    /// SiriStart_Haptic (SiriStart_Haptic)
    public static var siriStartHaptic: SystemSoundKey {
        .init(
            name: "SiriStart_Haptic",
            id: 1404,
            category: "SiriStart_Haptic",
            kind: .nano
        )
    }

    /// SiriStopSuccess_Haptic (SiriStopSuccess_Haptic)
    public static var siriStopSuccessHaptic: SystemSoundKey {
        .init(
            name: "SiriStopSuccess_Haptic",
            id: 1405,
            category: "SiriStopSuccess_Haptic",
            kind: .nano
        )
    }

    /// SiriStopFailure_Haptic (SiriStopFailure_Haptic)
    public static var siriStopFailureHaptic: SystemSoundKey {
        .init(
            name: "SiriStopFailure_Haptic",
            id: 1406,
            category: "SiriStopFailure_Haptic",
            kind: .nano
        )
    }

    /// Stockholm_Haptic (Stockholm_Haptic)
    public static var stockholmHaptic: SystemSoundKey {
        .init(
            name: "Stockholm_Haptic",
            id: 1407,
            category: "Stockholm_Haptic",
            kind: .nano
        )
    }

    /// Beat_Haptic (Beat_Haptic)
    public static var beatHaptic: SystemSoundKey {
        .init(
            name: "Beat_Haptic",
            id: 1408,
            category: "Beat_Haptic",
            kind: .nano
        )
    }

    ///  (RubberBand_Haptic)
    public static var rubberBandHaptic: SystemSoundKey {
        .init(
            name: "",
            id: 1409,
            category: "RubberBand_Haptic",
            kind: .default
        )
    }

    /// DoNotDisturb_Haptic (DoNotDisturb_Haptic)
    public static var doNotDisturbHaptic: SystemSoundKey {
        .init(
            name: "DoNotDisturb_Haptic",
            id: 1410,
            category: "DoNotDisturb_Haptic",
            kind: .nano
        )
    }

    ///  (UIConfirmation_Haptic)
    public static var uiConfirmationHaptic: SystemSoundKey {
        .init(
            name: "",
            id: 1411,
            category: "UIConfirmation_Haptic",
            kind: .default
        )
    }

    ///  (ET_Heartbeat_Haptic)
    public static var etHeartbeatHaptic: SystemSoundKey {
        .init(
            name: "",
            id: 1412,
            category: "ET_Heartbeat_Haptic",
            kind: .default
        )
    }

    /// Timer_Haptic (Timer_Haptic)
    public static var timerHaptic: SystemSoundKey {
        .init(
            name: "Timer_Haptic",
            id: 1413,
            category: "Timer_Haptic",
            kind: .nano
        )
    }

    /// NavigationLeftTurn_Haptic (NavigationLeftTurn_Haptic)
    public static var navigationLeftTurnHaptic: SystemSoundKey {
        .init(
            name: "NavigationLeftTurn_Haptic",
            id: 1414,
            category: "NavigationLeftTurn_Haptic",
            kind: .nano
        )
    }

    /// NavigationRightTurn_Haptic (NavigationRightTurn_Haptic)
    public static var navigationRightTurnHaptic: SystemSoundKey {
        .init(
            name: "NavigationRightTurn_Haptic",
            id: 1415,
            category: "NavigationRightTurn_Haptic",
            kind: .nano
        )
    }

    /// Detent_Haptic (Detent_Haptic)
    public static var detentHaptic: SystemSoundKey {
        .init(
            name: "Detent_Haptic",
            id: 1416,
            category: "Detent_Haptic",
            kind: .nano
        )
    }

    /// NavigationGenericManeuver_Haptic (NavigationGenericManeuver_Haptic)
    public static var navigationGenericManeuverHaptic: SystemSoundKey {
        .init(
            name: "NavigationGenericManeuver_Haptic",
            id: 1417,
            category: "NavigationGenericManeuver_Haptic",
            kind: .nano
        )
    }

    /// CameraCountdownTick_Haptic (CameraCountdownTick_Haptic)
    public static var cameraCountdownTickHaptic: SystemSoundKey {
        .init(
            name: "CameraCountdownTick_Haptic",
            id: 1418,
            category: "CameraCountdownTick_Haptic",
            kind: .nano
        )
    }

    /// CameraCountdownImminent_Haptic (CameraCountdownImminent_Haptic)
    public static var cameraCountdownImminentHaptic: SystemSoundKey {
        .init(
            name: "CameraCountdownImminent_Haptic",
            id: 1419,
            category: "CameraCountdownImminent_Haptic",
            kind: .nano
        )
    }

    /// ET_RemoteTap_Receive_Haptic (ET_RemoteTap_Receive_Haptic)
    public static var etRemoteTapReceiveHaptic: SystemSoundKey {
        .init(
            name: "ET_RemoteTap_Receive_Haptic",
            id: 1420,
            category: "ET_RemoteTap_Receive_Haptic",
            kind: .nano
        )
    }

    /// ET_RemoteTap_Send_Haptic (ET_RemoteTap_Send_Haptic)
    public static var etRemoteTapSendHaptic: SystemSoundKey {
        .init(
            name: "ET_RemoteTap_Send_Haptic",
            id: 1421,
            category: "ET_RemoteTap_Send_Haptic",
            kind: .nano
        )
    }

    /// ET_BeginNotification_Haptic (ET_BeginNotification_Haptic)
    public static var etBeginNotificationHaptic: SystemSoundKey {
        .init(
            name: "ET_BeginNotification_Haptic",
            id: 1422,
            category: "ET_BeginNotification_Haptic",
            kind: .nano
        )
    }

    ///  (DoNotDisturbExpiryWarning_Haptic)
    public static var doNotDisturbExpiryWarningHaptic: SystemSoundKey {
        .init(
            name: "",
            id: 1423,
            category: "DoNotDisturbExpiryWarning_Haptic",
            kind: .default
        )
    }

    /// StockholmActive_Haptic (StockholmActive_Haptic)
    public static var stockholmActiveHaptic: SystemSoundKey {
        .init(
            name: "StockholmActive_Haptic",
            id: 1424,
            category: "StockholmActive_Haptic",
            kind: .nano
        )
    }

    /// StockholmActiveSingleCycle_Haptic (StockholmActiveSingleCycle_Haptic)
    public static var stockholmActiveSingleCycleHaptic: SystemSoundKey {
        .init(
            name: "StockholmActiveSingleCycle_Haptic",
            id: 1425,
            category: "StockholmActiveSingleCycle_Haptic",
            kind: .nano
        )
    }

    /// StockholmFailure_Haptic (StockholmFailure_Haptic)
    public static var stockholmFailureHaptic: SystemSoundKey {
        .init(
            name: "StockholmFailure_Haptic",
            id: 1426,
            category: "StockholmFailure_Haptic",
            kind: .nano
        )
    }

    /// SedentaryTimer_Haptic (SedentaryTimer_Haptic)
    public static var sedentaryTimerHaptic: SystemSoundKey {
        .init(
            name: "SedentaryTimer_Haptic",
            id: 1427,
            category: "SedentaryTimer_Haptic",
            kind: .nano
        )
    }

    /// HourlyChime_Haptic (HourlyChime_Haptic)
    public static var hourlyChimeHaptic: SystemSoundKey {
        .init(
            name: "HourlyChime_Haptic",
            id: 1428,
            category: "HourlyChime_Haptic",
            kind: .nano
        )
    }

    /// Preview_AudioAndHaptic (Preview_AudioAndHaptic)
    public static var previewAudioAndHaptic: SystemSoundKey {
        .init(
            name: "Preview_AudioAndHaptic",
            id: 1429,
            category: "Preview_AudioAndHaptic",
            kind: .nano
        )
    }

    /// Alert_ActivityGoalAttained_Haptic (Alert_ActivityGoalAttained_Haptic)
    public static var alertActivityGoalAttainedHaptic: SystemSoundKey {
        .init(
            name: "Alert_ActivityGoalAttained_Haptic",
            id: 1430,
            category: "Alert_ActivityGoalAttained_Haptic",
            kind: .nano
        )
    }

    /// Alert_ActivityGoalBehind_Haptic (Alert_ActivityGoalBehind_Haptic)
    public static var alertActivityGoalBehindHaptic: SystemSoundKey {
        .init(
            name: "Alert_ActivityGoalBehind_Haptic",
            id: 1431,
            category: "Alert_ActivityGoalBehind_Haptic",
            kind: .nano
        )
    }

    /// Alert_ActivityGoalClose_Haptic (Alert_ActivityGoalClose_Haptic)
    public static var alertActivityGoalCloseHaptic: SystemSoundKey {
        .init(
            name: "Alert_ActivityGoalClose_Haptic",
            id: 1432,
            category: "Alert_ActivityGoalClose_Haptic",
            kind: .nano
        )
    }

    /// Alert_BatteryLow_Haptic
    public struct AlertBatteryLowHaptic: CaseIterable {
        public static let categoryName = "Alert_BatteryLow_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.alertBatteryLow10pHaptic]
        }

        /// Alert_BatteryLow_10p_Haptic (Alert_BatteryLow_Haptic)
        public static let alertBatteryLow10pHaptic: Self = .init(
            name: "Alert_BatteryLow_10p_Haptic",
            id: 1433,
            kind: .nano
        )
    }

    public static func alertBatteryLowHaptic(_ soundId: AlertBatteryLowHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AlertBatteryLowHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// Alert_BatteryCritical_Haptic
    public struct AlertBatteryCriticalHaptic: CaseIterable {
        public static let categoryName = "Alert_BatteryCritical_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.alertBatteryLow5pHaptic]
        }

        /// Alert_BatteryLow_5p_Haptic (Alert_BatteryCritical_Haptic)
        public static let alertBatteryLow5pHaptic: Self = .init(
            name: "Alert_BatteryLow_5p_Haptic",
            id: 1434,
            kind: .nano
        )
    }

    public static func alertBatteryCriticalHaptic(_ soundId: AlertBatteryCriticalHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AlertBatteryCriticalHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// Alert_Calendar_Haptic (Alert_Calendar_Haptic)
    public static var alertCalendarHaptic: SystemSoundKey {
        .init(
            name: "Alert_Calendar_Haptic",
            id: 1435,
            category: "Alert_Calendar_Haptic",
            kind: .nano
        )
    }

    /// Alert_Mail_Haptic
    public struct AlertMailHaptic: CaseIterable {
        public static let categoryName = "Alert_Mail_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.notificationHaptic]
        }

        /// Notification_Haptic (Alert_Mail_Haptic)
        public static let notificationHaptic: Self = .init(
            name: "Notification_Haptic",
            id: 1436,
            kind: .nano
        )
    }

    public static func alertMailHaptic(_ soundId: AlertMailHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AlertMailHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// Alert_Messages_1_Haptic
    public struct AlertMessages1Haptic: CaseIterable {
        public static let categoryName = "Alert_Messages_1_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.notificationHaptic]
        }

        /// Notification_Haptic (Alert_Messages_1_Haptic)
        public static let notificationHaptic: Self = .init(
            name: "Notification_Haptic",
            id: 1437,
            kind: .nano
        )
    }

    public static func alertMessages1Haptic(_ soundId: AlertMessages1Haptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AlertMessages1Haptic.categoryName,
            kind: soundId.kind
        )
    }

    /// Alert_Messages_2_Haptic
    public struct AlertMessages2Haptic: CaseIterable {
        public static let categoryName = "Alert_Messages_2_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.notificationHaptic]
        }

        /// Notification_Haptic (Alert_Messages_2_Haptic)
        public static let notificationHaptic: Self = .init(
            name: "Notification_Haptic",
            id: 1438,
            kind: .nano
        )
    }

    public static func alertMessages2Haptic(_ soundId: AlertMessages2Haptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AlertMessages2Haptic.categoryName,
            kind: soundId.kind
        )
    }

    /// Alert_Messages_3_Haptic
    public struct AlertMessages3Haptic: CaseIterable {
        public static let categoryName = "Alert_Messages_3_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.notificationHaptic]
        }

        /// Notification_Haptic (Alert_Messages_3_Haptic)
        public static let notificationHaptic: Self = .init(
            name: "Notification_Haptic",
            id: 1439,
            kind: .nano
        )
    }

    public static func alertMessages3Haptic(_ soundId: AlertMessages3Haptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AlertMessages3Haptic.categoryName,
            kind: soundId.kind
        )
    }

    /// Alert_PassbookBalance_Haptic (Alert_PassbookBalance_Haptic)
    public static var alertPassbookBalanceHaptic: SystemSoundKey {
        .init(
            name: "Alert_PassbookBalance_Haptic",
            id: 1440,
            category: "Alert_PassbookBalance_Haptic",
            kind: .nano
        )
    }

    /// Alert_PassbookGeofence_Haptic (Alert_PassbookGeofence_Haptic)
    public static var alertPassbookGeofenceHaptic: SystemSoundKey {
        .init(
            name: "Alert_PassbookGeofence_Haptic",
            id: 1441,
            category: "Alert_PassbookGeofence_Haptic",
            kind: .nano
        )
    }

    /// Alert_PhotostreamActivity_Haptic (Alert_PhotostreamActivity_Haptic)
    public static var alertPhotostreamActivityHaptic: SystemSoundKey {
        .init(
            name: "Alert_PhotostreamActivity_Haptic",
            id: 1442,
            category: "Alert_PhotostreamActivity_Haptic",
            kind: .nano
        )
    }

    /// Alert_ReminderDue_Haptic (Alert_ReminderDue_Haptic)
    public static var alertReminderDueHaptic: SystemSoundKey {
        .init(
            name: "Alert_ReminderDue_Haptic",
            id: 1443,
            category: "Alert_ReminderDue_Haptic",
            kind: .nano
        )
    }

    /// Alert_Voicemail_Haptic
    public struct AlertVoicemailHaptic: CaseIterable {
        public static let categoryName = "Alert_Voicemail_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.notificationHaptic]
        }

        /// Notification_Haptic (Alert_Voicemail_Haptic)
        public static let notificationHaptic: Self = .init(
            name: "Notification_Haptic",
            id: 1444,
            kind: .nano
        )
    }

    public static func alertVoicemailHaptic(_ soundId: AlertVoicemailHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AlertVoicemailHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// Alert_WalkieTalkie_Haptic (Alert_WalkieTalkie_Haptic)
    public static var alertWalkieTalkieHaptic: SystemSoundKey {
        .init(
            name: "Alert_WalkieTalkie_Haptic",
            id: 1445,
            category: "Alert_WalkieTalkie_Haptic",
            kind: .nano
        )
    }

    /// BatteryMagsafe_Haptic (BatteryMagsafe_Haptic)
    public static var batteryMagsafeHaptic: SystemSoundKey {
        .init(
            name: "BatteryMagsafe_Haptic",
            id: 1446,
            category: "BatteryMagsafe_Haptic",
            kind: .nano
        )
    }

    /// BuddyPairingFailure_Haptic (BuddyPairingFailure_Haptic)
    public static var buddyPairingFailureHaptic: SystemSoundKey {
        .init(
            name: "BuddyPairingFailure_Haptic",
            id: 1447,
            category: "BuddyPairingFailure_Haptic",
            kind: .nano
        )
    }

    /// BuddyPairingSuccess_Haptic (BuddyPairingSuccess_Haptic)
    public static var buddyPairingSuccessHaptic: SystemSoundKey {
        .init(
            name: "BuddyPairingSuccess_Haptic",
            id: 1448,
            category: "BuddyPairingSuccess_Haptic",
            kind: .nano
        )
    }

    /// CameraShutter_Haptic
    public struct CameraShutterHaptic: CaseIterable {
        public static let categoryName = "CameraShutter_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.cameraShutterHaptic, .screenCapture]
        }

        /// CameraShutter_Haptic (CameraShutter_Haptic)
        public static let cameraShutterHaptic: Self = .init(
            name: "CameraShutter_Haptic",
            id: 1449,
            kind: .nano
        )

        /// ScreenCapture (CameraShutter_Haptic)
        public static let screenCapture: Self = .init(
            name: "ScreenCapture",
            id: 1573,
            kind: .nano
        )
    }

    public static func cameraShutterHaptic(_ soundId: CameraShutterHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: CameraShutterHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// Alert_MapsDirectionsInApp_Haptic (Alert_MapsDirectionsInApp_Haptic)
    public static var alertMapsDirectionsInAppHaptic: SystemSoundKey {
        .init(
            name: "Alert_MapsDirectionsInApp_Haptic",
            id: 1450,
            category: "Alert_MapsDirectionsInApp_Haptic",
            kind: .nano
        )
    }

    /// MessagesIncoming_Haptic (MessagesIncoming_Haptic)
    public static var messagesIncomingHaptic: SystemSoundKey {
        .init(
            name: "MessagesIncoming_Haptic",
            id: 1451,
            category: "MessagesIncoming_Haptic",
            kind: .nano
        )
    }

    /// MessagesOutgoing_Haptic (MessagesOutgoing_Haptic)
    public static var messagesOutgoingHaptic: SystemSoundKey {
        .init(
            name: "MessagesOutgoing_Haptic",
            id: 1452,
            category: "MessagesOutgoing_Haptic",
            kind: .nano
        )
    }

    /// OnOffPasscodeFailure_Haptic (OnOffPasscodeFailure_Haptic)
    public static var onOffPasscodeFailureHaptic: SystemSoundKey {
        .init(
            name: "OnOffPasscodeFailure_Haptic",
            id: 1453,
            category: "OnOffPasscodeFailure_Haptic",
            kind: .nano
        )
    }

    ///  (OrbInvoke_Haptic)
    public static var orbInvokeHaptic: SystemSoundKey {
        .init(
            name: "",
            id: 1457,
            category: "OrbInvoke_Haptic",
            kind: .default
        )
    }

    /// OrbLayers_Haptic (OrbLayers_Haptic)
    public static var orbLayersHaptic: SystemSoundKey {
        .init(
            name: "OrbLayers_Haptic",
            id: 1458,
            category: "OrbLayers_Haptic",
            kind: .nano
        )
    }

    /// PhoneHangUp_Haptic (PhoneHangUp_Haptic)
    public static var phoneHangUpHaptic: SystemSoundKey {
        .init(
            name: "PhoneHangUp_Haptic",
            id: 1459,
            category: "PhoneHangUp_Haptic",
            kind: .nano
        )
    }

    /// PhotosZoomDetent_Haptic (PhotosZoomDetent_Haptic)
    public static var photosZoomDetentHaptic: SystemSoundKey {
        .init(
            name: "PhotosZoomDetent_Haptic",
            id: 1460,
            category: "PhotosZoomDetent_Haptic",
            kind: .nano
        )
    }

    /// QB_Dictation_Haptic (QB_Dictation_Haptic)
    public static var qbDictationHaptic: SystemSoundKey {
        .init(
            name: "QB_Dictation_Haptic",
            id: 1461,
            category: "QB_Dictation_Haptic",
            kind: .nano
        )
    }

    ///  (SpringboardEdgeUniverse_Haptic)
    public static var springboardEdgeUniverseHaptic: SystemSoundKey {
        .init(
            name: "",
            id: 1462,
            category: "SpringboardEdgeUniverse_Haptic",
            kind: .default
        )
    }

    ///  (SpringboardHardStop_Haptic)
    public static var springboardHardStopHaptic: SystemSoundKey {
        .init(
            name: "",
            id: 1463,
            category: "SpringboardHardStop_Haptic",
            kind: .default
        )
    }

    /// StopwatchLap_Haptic (StopwatchLap_Haptic)
    public static var stopwatchLapHaptic: SystemSoundKey {
        .init(
            name: "StopwatchLap_Haptic",
            id: 1464,
            category: "StopwatchLap_Haptic",
            kind: .nano
        )
    }

    /// StopwatchReset_Haptic (StopwatchReset_Haptic)
    public static var stopwatchResetHaptic: SystemSoundKey {
        .init(
            name: "StopwatchReset_Haptic",
            id: 1465,
            category: "StopwatchReset_Haptic",
            kind: .nano
        )
    }

    /// StopwatchStart_Haptic (StopwatchStart_Haptic)
    public static var stopwatchStartHaptic: SystemSoundKey {
        .init(
            name: "StopwatchStart_Haptic",
            id: 1466,
            category: "StopwatchStart_Haptic",
            kind: .nano
        )
    }

    /// StopwatchStop_Haptic (StopwatchStop_Haptic)
    public static var stopwatchStopHaptic: SystemSoundKey {
        .init(
            name: "StopwatchStop_Haptic",
            id: 1467,
            category: "StopwatchStop_Haptic",
            kind: .nano
        )
    }

    /// TimerCancel_Haptic (TimerCancel_Haptic)
    public static var timerCancelHaptic: SystemSoundKey {
        .init(
            name: "TimerCancel_Haptic",
            id: 1468,
            category: "TimerCancel_Haptic",
            kind: .nano
        )
    }

    /// TimerPause_Haptic (TimerPause_Haptic)
    public static var timerPauseHaptic: SystemSoundKey {
        .init(
            name: "TimerPause_Haptic",
            id: 1469,
            category: "TimerPause_Haptic",
            kind: .nano
        )
    }

    /// TimerStart_Haptic (TimerStart_Haptic)
    public static var timerStartHaptic: SystemSoundKey {
        .init(
            name: "TimerStart_Haptic",
            id: 1470,
            category: "TimerStart_Haptic",
            kind: .nano
        )
    }

    /// TimerWheelHoursDetent_Haptic (TimerWheelHoursDetent_Haptic)
    public static var timerWheelHoursDetentHaptic: SystemSoundKey {
        .init(
            name: "TimerWheelHoursDetent_Haptic",
            id: 1471,
            category: "TimerWheelHoursDetent_Haptic",
            kind: .nano
        )
    }

    /// WalkieTalkieActiveStart_Haptic (WalkieTalkieActiveStart_Haptic)
    public static var walkieTalkieActiveStartHaptic: SystemSoundKey {
        .init(
            name: "WalkieTalkieActiveStart_Haptic",
            id: 1472,
            category: "WalkieTalkieActiveStart_Haptic",
            kind: .nano
        )
    }

    /// WorkoutComplete_Haptic (WorkoutComplete_Haptic)
    public static var workoutCompleteHaptic: SystemSoundKey {
        .init(
            name: "WorkoutComplete_Haptic",
            id: 1473,
            category: "WorkoutComplete_Haptic",
            kind: .nano
        )
    }

    /// WorkoutCountdown_Haptic (WorkoutCountdown_Haptic)
    public static var workoutCountdownHaptic: SystemSoundKey {
        .init(
            name: "WorkoutCountdown_Haptic",
            id: 1474,
            category: "WorkoutCountdown_Haptic",
            kind: .nano
        )
    }

    /// Alert_3rdParty_Haptic (Alert_3rdParty_Haptic)
    public static var alert3rdPartyHaptic: SystemSoundKey {
        .init(
            name: "Alert_3rdParty_Haptic",
            id: 1475,
            category: "Alert_3rdParty_Haptic",
            kind: .nano
        )
    }

    /// WorkoutSelect_Haptic (WorkoutSelect_Haptic)
    public static var workoutSelectHaptic: SystemSoundKey {
        .init(
            name: "WorkoutSelect_Haptic",
            id: 1476,
            category: "WorkoutSelect_Haptic",
            kind: .nano
        )
    }

    /// WorkoutPressStart_Haptic (WorkoutPressStart_Haptic)
    public static var workoutPressStartHaptic: SystemSoundKey {
        .init(
            name: "WorkoutPressStart_Haptic",
            id: 1477,
            category: "WorkoutPressStart_Haptic",
            kind: .nano
        )
    }

    ///  (ClockAnalogTick_Haptic)
    public static var clockAnalogTickHaptic: SystemSoundKey {
        .init(
            name: "",
            id: 1478,
            category: "ClockAnalogTick_Haptic",
            kind: .default
        )
    }

    /// TimerWheelMinutesDetent_Haptic (TimerWheelMinutesDetent_Haptic)
    public static var timerWheelMinutesDetentHaptic: SystemSoundKey {
        .init(
            name: "TimerWheelMinutesDetent_Haptic",
            id: 1479,
            category: "TimerWheelMinutesDetent_Haptic",
            kind: .nano
        )
    }

    /// PhoneAnswer_Haptic (PhoneAnswer_Haptic)
    public static var phoneAnswerHaptic: SystemSoundKey {
        .init(
            name: "PhoneAnswer_Haptic",
            id: 1480,
            category: "PhoneAnswer_Haptic",
            kind: .nano
        )
    }

    /// PhoneHold_Haptic (PhoneHold_Haptic)
    public static var phoneHoldHaptic: SystemSoundKey {
        .init(
            name: "PhoneHold_Haptic",
            id: 1481,
            category: "PhoneHold_Haptic",
            kind: .nano
        )
    }

    /// WalkieTalkieActiveEnd_Haptic (WalkieTalkieActiveEnd_Haptic)
    public static var walkieTalkieActiveEndHaptic: SystemSoundKey {
        .init(
            name: "WalkieTalkieActiveEnd_Haptic",
            id: 1482,
            category: "WalkieTalkieActiveEnd_Haptic",
            kind: .nano
        )
    }

    ///  (UISnap_Haptic)
    public static var uiSnapHaptic: SystemSoundKey {
        .init(
            name: "",
            id: 1483,
            category: "UISnap_Haptic",
            kind: .default
        )
    }

    /// UISwitch_On_Haptic (UISwitch_On_Haptic)
    public static var uiSwitchOnHaptic: SystemSoundKey {
        .init(
            name: "UISwitch_On_Haptic",
            id: 1484,
            category: "UISwitch_On_Haptic",
            kind: .nano
        )
    }

    /// UISwitch_Off_Haptic (UISwitch_Off_Haptic)
    public static var uiSwitchOffHaptic: SystemSoundKey {
        .init(
            name: "UISwitch_Off_Haptic",
            id: 1485,
            category: "UISwitch_Off_Haptic",
            kind: .nano
        )
    }

    /// UISwipe_Haptic (UISwipe_Haptic)
    public static var uiSwipeHaptic: SystemSoundKey {
        .init(
            name: "UISwipe_Haptic",
            id: 1486,
            category: "UISwipe_Haptic",
            kind: .nano
        )
    }

    /// SystemStartup_Haptic (SystemStartup_Haptic)
    public static var systemStartupHaptic: SystemSoundKey {
        .init(
            name: "SystemStartup_Haptic",
            id: 1487,
            category: "SystemStartup_Haptic",
            kind: .nano
        )
    }

    /// BuddyPairingRemoteConnection_Haptic (BuddyPairingRemoteConnection_Haptic)
    public static var buddyPairingRemoteConnectionHaptic: SystemSoundKey {
        .init(
            name: "BuddyPairingRemoteConnection_Haptic",
            id: 1488,
            category: "BuddyPairingRemoteConnection_Haptic",
            kind: .nano
        )
    }

    /// BuddyPairingRemoteTap_Haptic (BuddyPairingRemoteTap_Haptic)
    public static var buddyPairingRemoteTapHaptic: SystemSoundKey {
        .init(
            name: "BuddyPairingRemoteTap_Haptic",
            id: 1489,
            category: "BuddyPairingRemoteTap_Haptic",
            kind: .nano
        )
    }

    /// QB_Dictation_Off_Haptic (QB_Dictation_Off_Haptic)
    public static var qbDictationOffHaptic: SystemSoundKey {
        .init(
            name: "QB_Dictation_Off_Haptic",
            id: 1490,
            category: "QB_Dictation_Off_Haptic",
            kind: .nano
        )
    }

    /// RingtoneDucked_US_Haptic (RingtoneDucked_US_Haptic)
    public static var ringtoneDuckedUSHaptic: SystemSoundKey {
        .init(
            name: "RingtoneDucked_US_Haptic",
            id: 1491,
            category: "RingtoneDucked_US_Haptic",
            kind: .nano
        )
    }

    /// RingtoneDucked_UK_Haptic (RingtoneDucked_UK_Haptic)
    public static var ringtoneDuckedUKHaptic: SystemSoundKey {
        .init(
            name: "RingtoneDucked_UK_Haptic",
            id: 1492,
            category: "RingtoneDucked_UK_Haptic",
            kind: .nano
        )
    }

    /// SalientNotification_Haptic (SalientNotification_Haptic)
    public static var salientNotificationHaptic: SystemSoundKey {
        .init(
            name: "SalientNotification_Haptic",
            id: 1493,
            category: "SalientNotification_Haptic",
            kind: .nano
        )
    }

    /// Notification_Salient_Haptic (Notification_Salient_Haptic)
    public static var notificationSalientHaptic: SystemSoundKey {
        .init(
            name: "Notification_Salient_Haptic",
            id: 1494,
            category: "Notification_Salient_Haptic",
            kind: .nano
        )
    }

    /// ET_BeginNotification_Salient_Haptic (ET_BeginNotification_Salient_Haptic)
    public static var etBeginNotificationSalientHaptic: SystemSoundKey {
        .init(
            name: "ET_BeginNotification_Salient_Haptic",
            id: 1495,
            category: "ET_BeginNotification_Salient_Haptic",
            kind: .nano
        )
    }

    /// Alert_Calendar_Salient_Haptic (Alert_Calendar_Salient_Haptic)
    public static var alertCalendarSalientHaptic: SystemSoundKey {
        .init(
            name: "Alert_Calendar_Salient_Haptic",
            id: 1496,
            category: "Alert_Calendar_Salient_Haptic",
            kind: .nano
        )
    }

    /// Alert_Mail_Salient_Haptic
    public struct AlertMailSalientHaptic: CaseIterable {
        public static let categoryName = "Alert_Mail_Salient_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.notificationSalientHaptic]
        }

        /// Notification_Salient_Haptic (Alert_Mail_Salient_Haptic)
        public static let notificationSalientHaptic: Self = .init(
            name: "Notification_Salient_Haptic",
            id: 1497,
            kind: .nano
        )
    }

    public static func alertMailSalientHaptic(_ soundId: AlertMailSalientHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AlertMailSalientHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// Alert_Messages_1_Salient_Haptic
    public struct AlertMessages1SalientHaptic: CaseIterable {
        public static let categoryName = "Alert_Messages_1_Salient_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.notificationSalientHaptic]
        }

        /// Notification_Salient_Haptic (Alert_Messages_1_Salient_Haptic)
        public static let notificationSalientHaptic: Self = .init(
            name: "Notification_Salient_Haptic",
            id: 1498,
            kind: .nano
        )
    }

    public static func alertMessages1SalientHaptic(_ soundId: AlertMessages1SalientHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AlertMessages1SalientHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// Alert_ReminderDue_Salient_Haptic (Alert_ReminderDue_Salient_Haptic)
    public static var alertReminderDueSalientHaptic: SystemSoundKey {
        .init(
            name: "Alert_ReminderDue_Salient_Haptic",
            id: 1499,
            category: "Alert_ReminderDue_Salient_Haptic",
            kind: .nano
        )
    }

    /// Alert_Voicemail_Salient_Haptic
    public struct AlertVoicemailSalientHaptic: CaseIterable {
        public static let categoryName = "Alert_Voicemail_Salient_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.notificationSalientHaptic]
        }

        /// Notification_Salient_Haptic (Alert_Voicemail_Salient_Haptic)
        public static let notificationSalientHaptic: Self = .init(
            name: "Notification_Salient_Haptic",
            id: 1500,
            kind: .nano
        )
    }

    public static func alertVoicemailSalientHaptic(_ soundId: AlertVoicemailSalientHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AlertVoicemailSalientHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// Alert_3rdParty_Salient_Haptic (Alert_3rdParty_Salient_Haptic)
    public static var alert3rdPartySalientHaptic: SystemSoundKey {
        .init(
            name: "Alert_3rdParty_Salient_Haptic",
            id: 1501,
            category: "Alert_3rdParty_Salient_Haptic",
            kind: .nano
        )
    }

    /// 3rdParty_DirectionUp_Haptic (3rdParty_DirectionUp_Haptic)
    public static var _3rdPartyDirectionUpHaptic: SystemSoundKey {
        .init(
            name: "3rdParty_DirectionUp_Haptic",
            id: 1502,
            category: "3rdParty_DirectionUp_Haptic",
            kind: .nano
        )
    }

    /// 3rdParty_DirectionDown_Haptic (3rdParty_DirectionDown_Haptic)
    public static var _3rdPartyDirectionDownHaptic: SystemSoundKey {
        .init(
            name: "3rdParty_DirectionDown_Haptic",
            id: 1503,
            category: "3rdParty_DirectionDown_Haptic",
            kind: .nano
        )
    }

    /// 3rdParty_Success_Haptic (3rdParty_Success_Haptic)
    public static var _3rdPartySuccessHaptic: SystemSoundKey {
        .init(
            name: "3rdParty_Success_Haptic",
            id: 1504,
            category: "3rdParty_Success_Haptic",
            kind: .nano
        )
    }

    /// 3rdParty_Failure_Haptic (3rdParty_Failure_Haptic)
    public static var _3rdPartyFailureHaptic: SystemSoundKey {
        .init(
            name: "3rdParty_Failure_Haptic",
            id: 1505,
            category: "3rdParty_Failure_Haptic",
            kind: .nano
        )
    }

    /// 3rdParty_Retry_Haptic (3rdParty_Retry_Haptic)
    public static var _3rdPartyRetryHaptic: SystemSoundKey {
        .init(
            name: "3rdParty_Retry_Haptic",
            id: 1506,
            category: "3rdParty_Retry_Haptic",
            kind: .nano
        )
    }

    /// 3rdParty_Start_Haptic (3rdParty_Start_Haptic)
    public static var _3rdPartyStartHaptic: SystemSoundKey {
        .init(
            name: "3rdParty_Start_Haptic",
            id: 1507,
            category: "3rdParty_Start_Haptic",
            kind: .nano
        )
    }

    /// 3rdParty_Stop_Haptic (3rdParty_Stop_Haptic)
    public static var _3rdPartyStopHaptic: SystemSoundKey {
        .init(
            name: "3rdParty_Stop_Haptic",
            id: 1508,
            category: "3rdParty_Stop_Haptic",
            kind: .nano
        )
    }

    /// Alarm_Nightstand_Haptic (Alarm_Nightstand_Haptic)
    public static var alarmNightstandHaptic: SystemSoundKey {
        .init(
            name: "Alarm_Nightstand_Haptic",
            id: 1509,
            category: "Alarm_Nightstand_Haptic",
            kind: .nano
        )
    }

    /// Alert_BatteryCritical_Salient_Haptic
    public struct AlertBatteryCriticalSalientHaptic: CaseIterable {
        public static let categoryName = "Alert_BatteryCritical_Salient_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.alertBatteryLow5pSalientHaptic]
        }

        /// Alert_BatteryLow_5p_Salient_Haptic (Alert_BatteryCritical_Salient_Haptic)
        public static let alertBatteryLow5pSalientHaptic: Self = .init(
            name: "Alert_BatteryLow_5p_Salient_Haptic",
            id: 1510,
            kind: .nano
        )
    }

    public static func alertBatteryCriticalSalientHaptic(_ soundId: AlertBatteryCriticalSalientHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AlertBatteryCriticalSalientHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// NavigationLeftTurn_Salient_Haptic (NavigationLeftTurn_Salient_Haptic)
    public static var navigationLeftTurnSalientHaptic: SystemSoundKey {
        .init(
            name: "NavigationLeftTurn_Salient_Haptic",
            id: 1511,
            category: "NavigationLeftTurn_Salient_Haptic",
            kind: .nano
        )
    }

    /// NavigationRightTurn_Salient_Haptic (NavigationRightTurn_Salient_Haptic)
    public static var navigationRightTurnSalientHaptic: SystemSoundKey {
        .init(
            name: "NavigationRightTurn_Salient_Haptic",
            id: 1512,
            category: "NavigationRightTurn_Salient_Haptic",
            kind: .nano
        )
    }

    /// NavigationGenericManeuver_Salient_Haptic (NavigationGenericManeuver_Salient_Haptic)
    public static var navigationGenericManeuverSalientHaptic: SystemSoundKey {
        .init(
            name: "NavigationGenericManeuver_Salient_Haptic",
            id: 1513,
            category: "NavigationGenericManeuver_Salient_Haptic",
            kind: .nano
        )
    }

    /// SedentaryTimer_Salient_Haptic (SedentaryTimer_Salient_Haptic)
    public static var sedentaryTimerSalientHaptic: SystemSoundKey {
        .init(
            name: "SedentaryTimer_Salient_Haptic",
            id: 1514,
            category: "SedentaryTimer_Salient_Haptic",
            kind: .nano
        )
    }

    /// Alert_ActivityGoalAttained_Salient_Haptic (Alert_ActivityGoalAttained_Salient_Haptic)
    public static var alertActivityGoalAttainedSalientHaptic: SystemSoundKey {
        .init(
            name: "Alert_ActivityGoalAttained_Salient_Haptic",
            id: 1515,
            category: "Alert_ActivityGoalAttained_Salient_Haptic",
            kind: .nano
        )
    }

    /// Alert_ActivityGoalBehind_Salient_Haptic (Alert_ActivityGoalBehind_Salient_Haptic)
    public static var alertActivityGoalBehindSalientHaptic: SystemSoundKey {
        .init(
            name: "Alert_ActivityGoalBehind_Salient_Haptic",
            id: 1516,
            category: "Alert_ActivityGoalBehind_Salient_Haptic",
            kind: .nano
        )
    }

    /// Alert_PassbookGeofence_Salient_Haptic (Alert_PassbookGeofence_Salient_Haptic)
    public static var alertPassbookGeofenceSalientHaptic: SystemSoundKey {
        .init(
            name: "Alert_PassbookGeofence_Salient_Haptic",
            id: 1517,
            category: "Alert_PassbookGeofence_Salient_Haptic",
            kind: .nano
        )
    }

    /// WorkoutSaved_Haptic (WorkoutSaved_Haptic)
    public static var workoutSavedHaptic: SystemSoundKey {
        .init(
            name: "WorkoutSaved_Haptic",
            id: 1518,
            category: "WorkoutSaved_Haptic",
            kind: .nano
        )
    }

    ///  (OrbPeek_Haptic)
    public static var orbPeekHaptic: SystemSoundKey {
        .init(
            name: "",
            id: 1519,
            category: "OrbPeek_Haptic",
            kind: .default
        )
    }

    ///  (OrbPop_Haptic)
    public static var orbPopHaptic: SystemSoundKey {
        .init(
            name: "",
            id: 1520,
            category: "OrbPop_Haptic",
            kind: .default
        )
    }

    ///  (OrbNegative_Haptic)
    public static var orbNegativeHaptic: SystemSoundKey {
        .init(
            name: "",
            id: 1521,
            category: "OrbNegative_Haptic",
            kind: .default
        )
    }

    /// VoiceOver_Click_Haptic (VoiceOver_Click_Haptic)
    public static var voiceOverClickHaptic: SystemSoundKey {
        .init(
            name: "VoiceOver_Click_Haptic",
            id: 1522,
            category: "VoiceOver_Click_Haptic",
            kind: .nano
        )
    }

    /// SiriAutoSend_Haptic (SiriAutoSend_Haptic)
    public static var siriAutoSendHaptic: SystemSoundKey {
        .init(
            name: "SiriAutoSend_Haptic",
            id: 1523,
            category: "SiriAutoSend_Haptic",
            kind: .nano
        )
    }

    ///  (HummingbirdCycle_Haptic)
    public static var hummingbirdCycleHaptic: SystemSoundKey {
        .init(
            name: "",
            id: 1524,
            category: "HummingbirdCycle_Haptic",
            kind: .default
        )
    }

    /// HummingbirdCompletion_Haptic (HummingbirdCompletion_Haptic)
    public static var hummingbirdCompletionHaptic: SystemSoundKey {
        .init(
            name: "HummingbirdCompletion_Haptic",
            id: 1525,
            category: "HummingbirdCompletion_Haptic",
            kind: .nano
        )
    }

    /// HummingbirdNotification_Haptic (HummingbirdNotification_Haptic)
    public static var hummingbirdNotificationHaptic: SystemSoundKey {
        .init(
            name: "HummingbirdNotification_Haptic",
            id: 1526,
            category: "HummingbirdNotification_Haptic",
            kind: .nano
        )
    }

    /// RemoteCameraShutterBurstBegin_Haptic (RemoteCameraShutterBurstBegin_Haptic)
    public static var remoteCameraShutterBurstBeginHaptic: SystemSoundKey {
        .init(
            name: "RemoteCameraShutterBurstBegin_Haptic",
            id: 1527,
            category: "RemoteCameraShutterBurstBegin_Haptic",
            kind: .nano
        )
    }

    /// RemoteCameraShutterBurstEnd_Haptic (RemoteCameraShutterBurstEnd_Haptic)
    public static var remoteCameraShutterBurstEndHaptic: SystemSoundKey {
        .init(
            name: "RemoteCameraShutterBurstEnd_Haptic",
            id: 1528,
            category: "RemoteCameraShutterBurstEnd_Haptic",
            kind: .nano
        )
    }

    /// WorkoutPaused_Haptic (WorkoutPaused_Haptic)
    public static var workoutPausedHaptic: SystemSoundKey {
        .init(
            name: "WorkoutPaused_Haptic",
            id: 1529,
            category: "WorkoutPaused_Haptic",
            kind: .nano
        )
    }

    /// WorkoutResumed_Haptic (WorkoutResumed_Haptic)
    public static var workoutResumedHaptic: SystemSoundKey {
        .init(
            name: "WorkoutResumed_Haptic",
            id: 1530,
            category: "WorkoutResumed_Haptic",
            kind: .nano
        )
    }

    /// GoToSleep_Haptic (GoToSleep_Haptic)
    public static var goToSleepHaptic: SystemSoundKey {
        .init(
            name: "GoToSleep_Haptic",
            id: 1531,
            category: "GoToSleep_Haptic",
            kind: .nano
        )
    }

    /// Warsaw_Haptic (Warsaw_Haptic)
    public static var warsawHaptic: SystemSoundKey {
        .init(
            name: "Warsaw_Haptic",
            id: 1532,
            category: "Warsaw_Haptic",
            kind: .nano
        )
    }

    /// AutoUnlock_Haptic (AutoUnlock_Haptic)
    public static var autoUnlockHaptic: SystemSoundKey {
        .init(
            name: "AutoUnlock_Haptic",
            id: 1533,
            category: "AutoUnlock_Haptic",
            kind: .nano
        )
    }

    /// Alert_ActivityFriendsGoalAttained_Haptic (Alert_ActivityFriendsGoalAttained_Haptic)
    public static var alertActivityFriendsGoalAttainedHaptic: SystemSoundKey {
        .init(
            name: "Alert_ActivityFriendsGoalAttained_Haptic",
            id: 1534,
            category: "Alert_ActivityFriendsGoalAttained_Haptic",
            kind: .nano
        )
    }

    /// Alert_SpartanConnecting_Haptic (Alert_SpartanConnecting_Haptic)
    public static var alertSpartanConnectingHaptic: SystemSoundKey {
        .init(
            name: "Alert_SpartanConnecting_Haptic",
            id: 1535,
            category: "Alert_SpartanConnecting_Haptic",
            kind: .nano
        )
    }

    /// Alert_SpartanConnecting_LowLatency_Haptic (Alert_SpartanConnecting_LowLatency_Haptic)
    public static var alertSpartanConnectingLowLatencyHaptic: SystemSoundKey {
        .init(
            name: "Alert_SpartanConnecting_LowLatency_Haptic",
            id: 1536,
            category: "Alert_SpartanConnecting_LowLatency_Haptic",
            kind: .nano
        )
    }

    /// Alert_SpartanConnected_LowLatency_Haptic (Alert_SpartanConnected_LowLatency_Haptic)
    public static var alertSpartanConnectedLowLatencyHaptic: SystemSoundKey {
        .init(
            name: "Alert_SpartanConnected_LowLatency_Haptic",
            id: 1537,
            category: "Alert_SpartanConnected_LowLatency_Haptic",
            kind: .nano
        )
    }

    /// Alert_SpartanDisconnected_LowLatency_Haptic (Alert_SpartanDisconnected_LowLatency_Haptic)
    public static var alertSpartanDisconnectedLowLatencyHaptic: SystemSoundKey {
        .init(
            name: "Alert_SpartanDisconnected_LowLatency_Haptic",
            id: 1538,
            category: "Alert_SpartanDisconnected_LowLatency_Haptic",
            kind: .nano
        )
    }

    ///  (Alert_SpartanReminderEscalationLevel1_Haptic)
    public static var alertSpartanReminderEscalationLevel1Haptic: SystemSoundKey {
        .init(
            name: "",
            id: 1539,
            category: "Alert_SpartanReminderEscalationLevel1_Haptic",
            kind: .default
        )
    }

    ///  (Alert_SpartanReminderEscalationLevel2_Haptic)
    public static var alertSpartanReminderEscalationLevel2Haptic: SystemSoundKey {
        .init(
            name: "",
            id: 1540,
            category: "Alert_SpartanReminderEscalationLevel2_Haptic",
            kind: .default
        )
    }

    ///  (Alert_SpartanReminderEscalationLevel3_Haptic)
    public static var alertSpartanReminderEscalationLevel3Haptic: SystemSoundKey {
        .init(
            name: "",
            id: 1541,
            category: "Alert_SpartanReminderEscalationLevel3_Haptic",
            kind: .default
        )
    }

    ///  (Alert_SpartanReminderEscalationLevel4_Haptic)
    public static var alertSpartanReminderEscalationLevel4Haptic: SystemSoundKey {
        .init(
            name: "",
            id: 1542,
            category: "Alert_SpartanReminderEscalationLevel4_Haptic",
            kind: .default
        )
    }

    /// AccessScanComplete_Haptic (AccessScanComplete_Haptic)
    public static var accessScanCompleteHaptic: SystemSoundKey {
        .init(
            name: "AccessScanComplete_Haptic",
            id: 1543,
            category: "AccessScanComplete_Haptic",
            kind: .nano
        )
    }

    /// BuddyMigrationStart_Haptic (BuddyMigrationStart_Haptic)
    public static var buddyMigrationStartHaptic: SystemSoundKey {
        .init(
            name: "BuddyMigrationStart_Haptic",
            id: 1544,
            category: "BuddyMigrationStart_Haptic",
            kind: .nano
        )
    }

    /// SOSFallDetectionPrompt_Haptic (SOSFallDetectionPrompt_Haptic)
    public static var sosFallDetectionPromptHaptic: SystemSoundKey {
        .init(
            name: "SOSFallDetectionPrompt_Haptic",
            id: 1545,
            category: "SOSFallDetectionPrompt_Haptic",
            kind: .nano
        )
    }

    /// SOSEmergencyContactTextPrompt_Haptic (SOSEmergencyContactTextPrompt_Haptic)
    public static var sosEmergencyContactTextPromptHaptic: SystemSoundKey {
        .init(
            name: "SOSEmergencyContactTextPrompt_Haptic",
            id: 1546,
            category: "SOSEmergencyContactTextPrompt_Haptic",
            kind: .nano
        )
    }

    /// WorkoutStartAutoDetected_Haptic
    public struct WorkoutStartAutoDetectedHaptic: CaseIterable {
        public static let categoryName = "WorkoutStartAutoDetected_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.workoutStartAutodetect]
        }

        /// WorkoutStartAutodetect (WorkoutStartAutoDetected_Haptic)
        public static let workoutStartAutodetect: Self = .init(
            name: "WorkoutStartAutodetect",
            id: 1547,
            kind: .nano
        )
    }

    public static func workoutStartAutoDetectedHaptic(_ soundId: WorkoutStartAutoDetectedHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: WorkoutStartAutoDetectedHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// WorkoutCompleteAutoDetected_Haptic
    public struct WorkoutCompleteAutoDetectedHaptic: CaseIterable {
        public static let categoryName = "WorkoutCompleteAutoDetected_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.workoutCompleteAutodetect]
        }

        /// WorkoutCompleteAutodetect (WorkoutCompleteAutoDetected_Haptic)
        public static let workoutCompleteAutodetect: Self = .init(
            name: "WorkoutCompleteAutodetect",
            id: 1548,
            kind: .nano
        )
    }

    public static func workoutCompleteAutoDetectedHaptic(_ soundId: WorkoutCompleteAutoDetectedHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: WorkoutCompleteAutoDetectedHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// WorkoutPausedAutoDetected_Haptic
    public struct WorkoutPausedAutoDetectedHaptic: CaseIterable {
        public static let categoryName = "WorkoutPausedAutoDetected_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.workoutPausedAutoDetect]
        }

        /// WorkoutPausedAutoDetect (WorkoutPausedAutoDetected_Haptic)
        public static let workoutPausedAutoDetect: Self = .init(
            name: "WorkoutPausedAutoDetect",
            id: 1549,
            kind: .nano
        )
    }

    public static func workoutPausedAutoDetectedHaptic(_ soundId: WorkoutPausedAutoDetectedHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: WorkoutPausedAutoDetectedHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// WorkoutResumedAutoDetected_Haptic
    public struct WorkoutResumedAutoDetectedHaptic: CaseIterable {
        public static let categoryName = "WorkoutResumedAutoDetected_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.workoutResumedAutoDetect]
        }

        /// WorkoutResumedAutoDetect (WorkoutResumedAutoDetected_Haptic)
        public static let workoutResumedAutoDetect: Self = .init(
            name: "WorkoutResumedAutoDetect",
            id: 1550,
            kind: .nano
        )
    }

    public static func workoutResumedAutoDetectedHaptic(_ soundId: WorkoutResumedAutoDetectedHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: WorkoutResumedAutoDetectedHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// Alert_PaceAbove_Haptic
    public struct AlertPaceAboveHaptic: CaseIterable {
        public static let categoryName = "Alert_PaceAbove_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.workoutPaceAbove]
        }

        /// WorkoutPaceAbove (Alert_PaceAbove_Haptic)
        public static let workoutPaceAbove: Self = .init(
            name: "WorkoutPaceAbove",
            id: 1551,
            kind: .nano
        )
    }

    public static func alertPaceAboveHaptic(_ soundId: AlertPaceAboveHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AlertPaceAboveHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// Alert_PaceBelow_Haptic
    public struct AlertPaceBelowHaptic: CaseIterable {
        public static let categoryName = "Alert_PaceBelow_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.workoutPaceBelow]
        }

        /// WorkoutPaceBelow (Alert_PaceBelow_Haptic)
        public static let workoutPaceBelow: Self = .init(
            name: "WorkoutPaceBelow",
            id: 1552,
            kind: .nano
        )
    }

    public static func alertPaceBelowHaptic(_ soundId: AlertPaceBelowHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AlertPaceBelowHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// WalkieTalkieReceiveStart_Haptic (WalkieTalkieReceiveStart_Haptic)
    public static var walkieTalkieReceiveStartHaptic: SystemSoundKey {
        .init(
            name: "WalkieTalkieReceiveStart_Haptic",
            id: 1553,
            category: "WalkieTalkieReceiveStart_Haptic",
            kind: .nano
        )
    }

    /// WalkieTalkieReceiveEnd_Haptic (WalkieTalkieReceiveEnd_Haptic)
    public static var walkieTalkieReceiveEndHaptic: SystemSoundKey {
        .init(
            name: "WalkieTalkieReceiveEnd_Haptic",
            id: 1554,
            category: "WalkieTalkieReceiveEnd_Haptic",
            kind: .nano
        )
    }

    /// Alert_Health_Haptic (Alert_Health_Haptic)
    public static var alertHealthHaptic: SystemSoundKey {
        .init(
            name: "Alert_Health_Haptic",
            id: 1555,
            category: "Alert_Health_Haptic",
            kind: .nano
        )
    }

    /// Alert_VCGroupInvitation_Haptic
    public struct AlertVCGroupInvitationHaptic: CaseIterable {
        public static let categoryName = "Alert_VCGroupInvitation_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.multiwayInvitation]
        }

        /// MultiwayInvitation (Alert_VCGroupInvitation_Haptic)
        public static let multiwayInvitation: Self = .init(
            name: "MultiwayInvitation",
            id: 1558,
            kind: .nano
        )
    }

    public static func alertVCGroupInvitationHaptic(_ soundId: AlertVCGroupInvitationHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AlertVCGroupInvitationHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// Alert_Critical_Haptic
    public struct AlertCriticalHaptic: CaseIterable {
        public static let categoryName = "Alert_Critical_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [._3rdPartyCriticalHaptic]
        }

        /// 3rd_Party_Critical_Haptic (Alert_Critical_Haptic)
        public static let _3rdPartyCriticalHaptic: Self = .init(
            name: "3rd_Party_Critical_Haptic",
            id: 1559,
            kind: .nano
        )
    }

    public static func alertCriticalHaptic(_ soundId: AlertCriticalHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AlertCriticalHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// Alert_FirstParty_Haptic
    public struct AlertFirstPartyHaptic: CaseIterable {
        public static let categoryName = "Alert_FirstParty_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.alert1stPartyHaptic]
        }

        /// Alert_1stParty_Haptic (Alert_FirstParty_Haptic)
        public static let alert1stPartyHaptic: Self = .init(
            name: "Alert_1stParty_Haptic",
            id: 1560,
            kind: .nano
        )
    }

    public static func alertFirstPartyHaptic(_ soundId: AlertFirstPartyHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AlertFirstPartyHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// Alert_HealthNotificationUrgent_Haptic
    public struct AlertHealthNotificationUrgentHaptic: CaseIterable {
        public static let categoryName = "Alert_HealthNotificationUrgent_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.healthNotificationUrgent]
        }

        /// HealthNotificationUrgent (Alert_HealthNotificationUrgent_Haptic)
        public static let healthNotificationUrgent: Self = .init(
            name: "HealthNotificationUrgent",
            id: 1561,
            kind: .nano
        )
    }

    public static func alertHealthNotificationUrgentHaptic(_ soundId: AlertHealthNotificationUrgentHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AlertHealthNotificationUrgentHaptic.categoryName,
            kind: soundId.kind
        )
    }

    ///  (Alert_Limit_Exceeded_Haptic)
    @available(iOS 16, *)
    public static var alertLimitExceededHaptic: SystemSoundKey {
        .init(
            name: "",
            id: 1562,
            category: "Alert_Limit_Exceeded_Haptic",
            kind: .default
        )
    }

    /// Siren_Countdown_Major_Haptic (Siren_Countdown_Major_Haptic)
    @available(iOS 16, *)
    public static var sirenCountdownMajorHaptic: SystemSoundKey {
        .init(
            name: "Siren_Countdown_Major_Haptic",
            id: 1563,
            category: "Siren_Countdown_Major_Haptic",
            kind: .nano
        )
    }

    /// Siren_Countdown_Minor_Haptic (Siren_Countdown_Minor_Haptic)
    @available(iOS 16, *)
    public static var sirenCountdownMinorHaptic: SystemSoundKey {
        .init(
            name: "Siren_Countdown_Minor_Haptic",
            id: 1564,
            category: "Siren_Countdown_Minor_Haptic",
            kind: .nano
        )
    }

    ///  (SunlightPrompt_Haptic)
    @available(iOS 16, *)
    public static var sunlightPromptHaptic: SystemSoundKey {
        .init(
            name: "",
            id: 1565,
            category: "SunlightPrompt_Haptic",
            kind: .default
        )
    }

    /// Doorbell_Haptic (Doorbell_Haptic)
    @available(iOS 16, *)
    public static var doorbellHaptic: SystemSoundKey {
        .init(
            name: "Doorbell_Haptic",
            id: 1566,
            category: "Doorbell_Haptic",
            kind: .nano
        )
    }

    /// System_Notification_Haptic (System_Notification_Haptic)
    public static var systemNotificationHaptic: SystemSoundKey {
        .init(
            name: "System_Notification_Haptic",
            id: 1567,
            category: "System_Notification_Haptic",
            kind: .nano
        )
    }

    /// SOSFallDetectionPromptEscalation_Haptic (SOSFallDetectionPromptEscalation_Haptic)
    public static var sosFallDetectionPromptEscalationHaptic: SystemSoundKey {
        .init(
            name: "SOSFallDetectionPromptEscalation_Haptic",
            id: 1568,
            category: "SOSFallDetectionPromptEscalation_Haptic",
            kind: .nano
        )
    }

    ///  (WalkAMile_Haptic)
    public static var walkAMileHaptic: SystemSoundKey {
        .init(
            name: "",
            id: 1569,
            category: "WalkAMile_Haptic",
            kind: .default
        )
    }

    /// HealthReadingComplete_Haptic (HealthReadingComplete_Haptic)
    public static var healthReadingCompleteHaptic: SystemSoundKey {
        .init(
            name: "HealthReadingComplete_Haptic",
            id: 1570,
            category: "HealthReadingComplete_Haptic",
            kind: .nano
        )
    }

    /// HealthReadingFail_Haptic (HealthReadingFail_Haptic)
    public static var healthReadingFailHaptic: SystemSoundKey {
        .init(
            name: "HealthReadingFail_Haptic",
            id: 1571,
            category: "HealthReadingFail_Haptic",
            kind: .nano
        )
    }

    /// HeadphoneAudioExposureLimitExceeded_Haptic
    public struct HeadphoneAudioExposureLimitExceededHaptic: CaseIterable {
        public static let categoryName = "HeadphoneAudioExposureLimitExceeded_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            [.headphoneAudioExposureLimitExceeded]
        }

        /// HeadphoneAudioExposureLimitExceeded (HeadphoneAudioExposureLimitExceeded_Haptic)
        public static let headphoneAudioExposureLimitExceeded: Self = .init(
            name: "HeadphoneAudioExposureLimitExceeded",
            id: 1572,
            kind: .nano
        )
    }

    public static func headphoneAudioExposureLimitExceededHaptic(_ soundId: HeadphoneAudioExposureLimitExceededHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: HeadphoneAudioExposureLimitExceededHaptic.categoryName,
            kind: soundId.kind
        )
    }

    ///  (Time_To_Run_Haptic)
    @available(iOS 16, *)
    public static var timeToRunHaptic: SystemSoundKey {
        .init(
            name: "",
            id: 1574,
            category: "Time_To_Run_Haptic",
            kind: .default
        )
    }

    ///  (Time_To_Walk_Haptic)
    @available(iOS 16, *)
    public static var timeToWalkHaptic: SystemSoundKey {
        .init(
            name: "",
            id: 1575,
            category: "Time_To_Walk_Haptic",
            kind: .default
        )
    }

    /// PushToTalkJoined_Haptic
    public struct PushToTalkJoinedHaptic: CaseIterable {
        public static let categoryName = "PushToTalkJoined_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            var result: [Self] = []
            if #available(iOS 16.2, *) { result.append(.pushToTalkJoined) }
            return result
        }

        /// PushToTalkJoined (PushToTalkJoined_Haptic)
        @available(iOS 16.2, *)
        public static let pushToTalkJoined: Self = .init(
            name: "PushToTalkJoined",
            id: 1576,
            kind: .nano
        )
    }

    public static func pushToTalkJoinedHaptic(_ soundId: PushToTalkJoinedHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: PushToTalkJoinedHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// PushToTalkLeft_Haptic
    public struct PushToTalkLeftHaptic: CaseIterable {
        public static let categoryName = "PushToTalkLeft_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            var result: [Self] = []
            if #available(iOS 16.2, *) { result.append(.pushToTalkLeft) }
            return result
        }

        /// PushToTalkLeft (PushToTalkLeft_Haptic)
        @available(iOS 16.2, *)
        public static let pushToTalkLeft: Self = .init(
            name: "PushToTalkLeft",
            id: 1577,
            kind: .nano
        )
    }

    public static func pushToTalkLeftHaptic(_ soundId: PushToTalkLeftHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: PushToTalkLeftHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// PushToTalkUnmute_Haptic
    public struct PushToTalkUnmuteHaptic: CaseIterable {
        public static let categoryName = "PushToTalkUnmute_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            var result: [Self] = []
            if #available(iOS 16.2, *) { result.append(.pushToTalkUnmute) }
            return result
        }

        /// PushToTalkUnmute (PushToTalkUnmute_Haptic)
        @available(iOS 16.2, *)
        public static let pushToTalkUnmute: Self = .init(
            name: "PushToTalkUnmute",
            id: 1578,
            kind: .nano
        )
    }

    public static func pushToTalkUnmuteHaptic(_ soundId: PushToTalkUnmuteHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: PushToTalkUnmuteHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// PushToTalkMute_Haptic
    public struct PushToTalkMuteHaptic: CaseIterable {
        public static let categoryName = "PushToTalkMute_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            var result: [Self] = []
            if #available(iOS 16.2, *) { result.append(.pushToTalkMute) }
            return result
        }

        /// PushToTalkMute (PushToTalkMute_Haptic)
        @available(iOS 16.2, *)
        public static let pushToTalkMute: Self = .init(
            name: "PushToTalkMute",
            id: 1579,
            kind: .nano
        )
    }

    public static func pushToTalkMuteHaptic(_ soundId: PushToTalkMuteHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: PushToTalkMuteHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// PushToTalkUnmuteFail_Haptic
    public struct PushToTalkUnmuteFailHaptic: CaseIterable {
        public static let categoryName = "PushToTalkUnmuteFail_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            var result: [Self] = []
            if #available(iOS 16.2, *) { result.append(.pushToTalkUnmuteFail) }
            return result
        }

        /// PushToTalkUnmuteFail (PushToTalkUnmuteFail_Haptic)
        @available(iOS 16.2, *)
        public static let pushToTalkUnmuteFail: Self = .init(
            name: "PushToTalkUnmuteFail",
            id: 1580,
            kind: .nano
        )
    }

    public static func pushToTalkUnmuteFailHaptic(_ soundId: PushToTalkUnmuteFailHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: PushToTalkUnmuteFailHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// WorkoutPrecisionStart_Haptic (WorkoutPrecisionStart_Haptic)
    @available(iOS 17, *)
    public static var workoutPrecisionStartHaptic: SystemSoundKey {
        .init(
            name: "WorkoutPrecisionStart_Haptic",
            id: 1581,
            category: "WorkoutPrecisionStart_Haptic",
            kind: .nano
        )
    }

    /// Alert_IntervalEnded_Haptic
    public struct AlertIntervalEndedHaptic: CaseIterable {
        public static let categoryName = "Alert_IntervalEnded_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            var result: [Self] = []
            if #available(iOS 16.2, *) { result.append(.intervalEnded) }
            return result
        }

        /// IntervalEnded (Alert_IntervalEnded_Haptic)
        @available(iOS 16.2, *)
        public static let intervalEnded: Self = .init(
            name: "IntervalEnded",
            id: 1582,
            kind: .nano
        )
    }

    public static func alertIntervalEndedHaptic(_ soundId: AlertIntervalEndedHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AlertIntervalEndedHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// Alert_IntervalUpcoming_Haptic
    public struct AlertIntervalUpcomingHaptic: CaseIterable {
        public static let categoryName = "Alert_IntervalUpcoming_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            var result: [Self] = []
            if #available(iOS 16.2, *) { result.append(.intervalUpcoming) }
            return result
        }

        /// IntervalUpcoming (Alert_IntervalUpcoming_Haptic)
        @available(iOS 16.2, *)
        public static let intervalUpcoming: Self = .init(
            name: "IntervalUpcoming",
            id: 1583,
            kind: .nano
        )
    }

    public static func alertIntervalUpcomingHaptic(_ soundId: AlertIntervalUpcomingHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: AlertIntervalUpcomingHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// Elevation_Alert_Haptic
    public struct ElevationAlertHaptic: CaseIterable {
        public static let categoryName = "Elevation_Alert_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            var result: [Self] = []
            if #available(iOS 17, *) { result.append(.elevation) }
            return result
        }

        /// Elevation (Elevation_Alert_Haptic)
        @available(iOS 17, *)
        public static let elevation: Self = .init(
            name: "Elevation",
            id: 1584,
            kind: .nano
        )
    }

    public static func elevationAlertHaptic(_ soundId: ElevationAlertHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: ElevationAlertHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// IDCard_Sender_Confirmation_Haptic
    public struct IdCardSenderConfirmationHaptic: CaseIterable {
        public static let categoryName = "IDCard_Sender_Confirmation_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            var result: [Self] = []
            if #available(iOS 17, *) { result.append(.senderConfirmation) }
            return result
        }

        /// SenderConfirmation (IDCard_Sender_Confirmation_Haptic)
        @available(iOS 17, *)
        public static let senderConfirmation: Self = .init(
            name: "SenderConfirmation",
            id: 1585,
            kind: .nano
        )
    }

    public static func idCardSenderConfirmationHaptic(_ soundId: IdCardSenderConfirmationHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: IdCardSenderConfirmationHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// IDCard_Receiver_Confirmation_Haptic
    public struct IdCardReceiverConfirmationHaptic: CaseIterable {
        public static let categoryName = "IDCard_Receiver_Confirmation_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            var result: [Self] = []
            if #available(iOS 17, *) { result.append(.receiverConfirmation) }
            return result
        }

        /// ReceiverConfirmation (IDCard_Receiver_Confirmation_Haptic)
        @available(iOS 17, *)
        public static let receiverConfirmation: Self = .init(
            name: "ReceiverConfirmation",
            id: 1586,
            kind: .nano
        )
    }

    public static func idCardReceiverConfirmationHaptic(_ soundId: IdCardReceiverConfirmationHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: IdCardReceiverConfirmationHaptic.categoryName,
            kind: soundId.kind
        )
    }

    /// IDCard_Receiver_Connect_Haptic
    public struct IdCardReceiverConnectHaptic: CaseIterable {
        public static let categoryName = "IDCard_Receiver_Connect_Haptic"

        public let name: String
        public let id: Int
        public let kind: SystemSoundKind

        public static var allCases: [Self] {
            var result: [Self] = []
            if #available(iOS 17, *) { result.append(.receiverConnect) }
            return result
        }

        /// ReceiverConnect (IDCard_Receiver_Connect_Haptic)
        @available(iOS 17, *)
        public static let receiverConnect: Self = .init(
            name: "ReceiverConnect",
            id: 1587,
            kind: .nano
        )
    }

    public static func idCardReceiverConnectHaptic(_ soundId: IdCardReceiverConnectHaptic) -> SystemSoundKey {
        .init(
            name: soundId.name,
            id: soundId.id,
            category: IdCardReceiverConnectHaptic.categoryName,
            kind: soundId.kind
        )
    }

    ///  (AudioPrewarm)
    @available(iOS 16, *)
    public static var audioPrewarm: SystemSoundKey {
        .init(
            name: "",
            id: 3100,
            category: "AudioPrewarm",
            kind: .default
        )
    }

    ///  (HapticPrewarm)
    @available(iOS 16, *)
    public static var hapticPrewarm: SystemSoundKey {
        .init(
            name: "",
            id: 3101,
            category: "HapticPrewarm",
            kind: .default
        )
    }

    ///  (Vibrate)
    public static var vibrate: SystemSoundKey {
        .init(
            name: "",
            id: 4095,
            category: "Vibrate",
            kind: .default
        )
    }

    /// focus_change_keyboard
    public static var focusChangeKeyboard: SystemSoundKey {
        .init(
            name: "focus_change_keyboard",
            id: 1124,
            category: nil,
            kind: .default
        )
    }

    /// focus_change_app_icon
    public static var focusChangeAppIcon: SystemSoundKey {
        .init(
            name: "focus_change_app_icon",
            id: 1125,
            category: nil,
            kind: .default
        )
    }

    /// focus_change_large
    public static var focusChangeLarge: SystemSoundKey {
        .init(
            name: "focus_change_large",
            id: 1126,
            category: nil,
            kind: .default
        )
    }

    /// focus_change_small
    public static var focusChangeSmall: SystemSoundKey {
        .init(
            name: "focus_change_small",
            id: 1127,
            category: nil,
            kind: .default
        )
    }

    /// navigation_push
    public static var navigationPush: SystemSoundKey {
        .init(
            name: "navigation_push",
            id: 1128,
            category: nil,
            kind: .default
        )
    }

    /// navigation_pop
    public static var navigationPop: SystemSoundKey {
        .init(
            name: "navigation_pop",
            id: 1129,
            category: nil,
            kind: .default
        )
    }

    /// keyboard_press_normal
    public static var keyboardPressNormal: SystemSoundKey {
        .init(
            name: "keyboard_press_normal",
            id: 1130,
            category: nil,
            kind: .default
        )
    }

    /// keyboard_press_delete
    public static var keyboardPressDelete: SystemSoundKey {
        .init(
            name: "keyboard_press_delete",
            id: 1131,
            category: nil,
            kind: .default
        )
    }

    /// keyboard_press_clear
    public static var keyboardPressClear: SystemSoundKey {
        .init(
            name: "keyboard_press_clear",
            id: 1132,
            category: nil,
            kind: .default
        )
    }

    /// RemoteAttentionRequest_Alert
    @available(iOS 18.2, *)
    public static var remoteAttentionRequestAlert: SystemSoundKey {
        .init(
            name: "RemoteAttentionRequest_Alert",
            id: 1281,
            category: nil,
            kind: .default
        )
    }

    /// NFCCardProvisioned
    @available(iOS 18, *)
    public static var nfcCardProvisioned: SystemSoundKey {
        .init(
            name: "NFCCardProvisioned",
            id: 1346,
            category: nil,
            kind: .default
        )
    }

    /// NFCCardComplete
    @available(iOS 18, *)
    public static var nfcCardComplete: SystemSoundKey {
        .init(
            name: "NFCCardComplete",
            id: 1347,
            category: nil,
            kind: .default
        )
    }

    /// NFCCardError
    @available(iOS 18, *)
    public static var nfcCardError: SystemSoundKey {
        .init(
            name: "NFCCardError",
            id: 1348,
            category: nil,
            kind: .default
        )
    }

    /// connect_power
    public static var connectPower: SystemSoundKey {
        .init(
            name: "connect_power",
            id: 1360, // or 1361
            category: nil,
            kind: .default
        )
    }

    /// MediaPaused
    public static var mediaPaused: SystemSoundKey {
        .init(
            name: "MediaPaused",
            id: 1368,
            category: nil,
            kind: .nano
        )
    }

    /// MediaHandoff
    public static var mediaHandoff: SystemSoundKey {
        .init(
            name: "MediaHandoff",
            id: 1369,
            category: nil,
            kind: .nano
        )
    }

    /// HeadGesturesDoubleNod
    @available(iOS 18, *)
    public static var headGesturesDoubleNod: SystemSoundKey {
        .init(
            name: "HeadGesturesDoubleNod",
            id: 1371,
            category: nil,
            kind: .nano
        )
    }

    /// HeadGesturesDoubleShake
    @available(iOS 18, *)
    public static var headGesturesDoubleShake: SystemSoundKey {
        .init(
            name: "HeadGesturesDoubleShake",
            id: 1372,
            category: nil,
            kind: .nano
        )
    }

    /// HeadGesturesPartialNod
    @available(iOS 18, *)
    public static var headGesturesPartialNod: SystemSoundKey {
        .init(
            name: "HeadGesturesPartialNod",
            id: 1373,
            category: nil,
            kind: .nano
        )
    }

    /// HeadGesturesPartialShake
    @available(iOS 18, *)
    public static var headGesturesPartialShake: SystemSoundKey {
        .init(
            name: "HeadGesturesPartialShake",
            id: 1374,
            category: nil,
            kind: .nano
        )
    }

    /// ScreenCapture
    public static var screenCapture: SystemSoundKey {
        .init(
            name: "ScreenCapture",
            id: 1393,
            category: nil,
            kind: .nano
        )
    }

    /// acknowledgment_sent
    public static var acknowledgmentSent: SystemSoundKey {
        .init(
            name: "acknowledgment_sent",
            id: 1396,
            category: nil,
            kind: .default
        )
    }

    /// acknowledgment_received
    public static var acknowledgmentReceived: SystemSoundKey {
        .init(
            name: "acknowledgment_received",
            id: 1397,
            category: nil,
            kind: .default
        )
    }

    /// RegattaTimer
    @available(iOS 18, *)
    public static var regattaTimer: SystemSoundKey {
        .init(
            name: "RegattaTimer",
            id: 1588,
            category: nil,
            kind: .nano
        )
    }
}

extension SystemSoundKey {
    public static var allCases: [Self] {
        var result = InCallSystemSound.allCases.map({ .inCallSystemSound($0) }) +
        MailReceived.allCases.map({ .mailReceived($0) }) +
        MailSent.allCases.map({ .mailSent($0) }) +
        VoicemailReceived.allCases.map({ .voicemailReceived($0) }) +
        SmsReceived.allCases.map({ .smsReceived($0) }) +
        SmsSent.allCases.map({ .smsSent($0) }) +
        CalendarAlert.allCases.map({ .calendarAlert($0) }) +
        SmsReceivedAlert.allCases.map({ .smsReceivedAlert($0) }) +
        SmsReceivedVibrate.allCases.map({ .smsReceivedVibrate($0) }) +
        UserAlert.allCases.map({ .userAlert($0) }) +
        ReminderAlert.allCases.map({ .reminderAlert($0) }) +
        UssdAlert.allCases.map({ .ussdAlert($0) }) +
        SimToolkitTone.allCases.map({ .simToolkitTone($0) }) +
        PinKeyPressed.allCases.map({ .pinKeyPressed($0) }) +
        WebcamStartAlwaysHeard.allCases.map({ .webcamStartAlwaysHeard($0) }) +
        LiquidDetectedAlwaysHeard.allCases.map({ .liquidDetectedAlwaysHeard($0) }) +
        AudioToneBusy.allCases.map({ .audioToneBusy($0) }) +
        AudioToneCongestion.allCases.map({ .audioToneCongestion($0) }) +
        AudioTonePathAcknowledge.allCases.map({ .audioTonePathAcknowledge($0) }) +
        AudioToneError.allCases.map({ .audioToneError($0) }) +
        AudioToneCallWaiting.allCases.map({ .audioToneCallWaiting($0) }) +
        AudioToneKey2.allCases.map({ .audioToneKey2($0) }) +
        ScreenLocked.allCases.map({ .screenLocked($0) }) +
        KeyPressed.allCases.map({ .keyPressed($0) }) +
        ConnectedToPower.allCases.map({ .connectedToPower($0) }) +
        RingerSwitchIndication.allCases.map({ .ringerSwitchIndication($0) }) +
        CameraShutter.allCases.map({ .cameraShutter($0) }) +
        ShakeToShuffle.allCases.map({ .shakeToShuffle($0) }) +
        BeginRecording.allCases.map({ .beginRecording($0) }) +
        EndRecording.allCases.map({ .endRecording($0) }) +
        BeginVideoRecordingAlwaysHeard.allCases.map({ .beginVideoRecordingAlwaysHeard($0) }) +
        EndVideoRecordingAlwaysHeard.allCases.map({ .endVideoRecordingAlwaysHeard($0) }) +
        CameraShutterAlt.allCases.map({ .cameraShutterAlt($0) }) +
        AirDropInvitation.allCases.map({ .airDropInvitation($0) }) +
        KeyPressClickRemote.allCases.map({ .keyPressClickRemote($0) }) +
        VcCallWaiting.allCases.map({ .vcCallWaiting($0) }) +
        VcCallUpgrade.allCases.map({ .vcCallUpgrade($0) }) +
        PaymentSuccess.allCases.map({ .paymentSuccess($0) }) +
        CriticalAlert.allCases.map({ .criticalAlert($0) }) +
        TouchTone.allCases.map({ .touchTone($0) }) +
        HeadsetStartCall.allCases.map({ .headsetStartCall($0) }) +
        HeadsetRedial.allCases.map({ .headsetRedial($0) }) +
        HeadsetAnswerCall.allCases.map({ .headsetAnswerCall($0) }) +
        HeadsetEndCall.allCases.map({ .headsetEndCall($0) }) +
        HeadsetCallWaitingActions.allCases.map({ .headsetCallWaitingActions($0) }) +
        HeadsetTransitionEnd.allCases.map({ .headsetTransitionEnd($0) }) +
        HealthAlert.allCases.map({ .healthAlert($0) }) +
        VcGroupInvitationAlert.allCases.map({ .vcGroupInvitationAlert($0) }) +
        IdCardSenderConfirmation.allCases.map({ .idCardSenderConfirmation($0) }) +
        IdCardReceiverConfirmation.allCases.map({ .idCardReceiverConfirmation($0) }) +
        IdCardReceiverConnect.allCases.map({ .idCardReceiverConnect($0) }) +
        SystemSoundPreviewIgnoreRingerSwitch.allCases.map({ .systemSoundPreviewIgnoreRingerSwitch($0) }) +
        SystemSoundPreview.allCases.map({ .systemSoundPreview($0) }) +
        KeyPressClickPreview.allCases.map({ .keyPressClickPreview($0) }) +
        SmsReceivedSelection.allCases.map({ .smsReceivedSelection($0) }) +
        SystemSoundPreviewIgnoreRingerSwitchNoVibe.allCases.map({ .systemSoundPreviewIgnoreRingerSwitchNoVibe($0) }) +
        PaymentFailure.allCases.map({ .paymentFailure($0) }) +
        AlertBatteryLowHaptic.allCases.map({ .alertBatteryLowHaptic($0) }) +
        AlertBatteryCriticalHaptic.allCases.map({ .alertBatteryCriticalHaptic($0) }) +
        AlertMailHaptic.allCases.map({ .alertMailHaptic($0) }) +
        AlertMessages1Haptic.allCases.map({ .alertMessages1Haptic($0) }) +
        AlertMessages2Haptic.allCases.map({ .alertMessages2Haptic($0) }) +
        AlertMessages3Haptic.allCases.map({ .alertMessages3Haptic($0) }) +
        AlertVoicemailHaptic.allCases.map({ .alertVoicemailHaptic($0) }) +
        CameraShutterHaptic.allCases.map({ .cameraShutterHaptic($0) }) +
        AlertMailSalientHaptic.allCases.map({ .alertMailSalientHaptic($0) }) +
        AlertMessages1SalientHaptic.allCases.map({ .alertMessages1SalientHaptic($0) }) +
        AlertVoicemailSalientHaptic.allCases.map({ .alertVoicemailSalientHaptic($0) }) +
        AlertBatteryCriticalSalientHaptic.allCases.map({ .alertBatteryCriticalSalientHaptic($0) }) +
        WorkoutStartAutoDetectedHaptic.allCases.map({ .workoutStartAutoDetectedHaptic($0) }) +
        WorkoutCompleteAutoDetectedHaptic.allCases.map({ .workoutCompleteAutoDetectedHaptic($0) }) +
        WorkoutPausedAutoDetectedHaptic.allCases.map({ .workoutPausedAutoDetectedHaptic($0) }) +
        WorkoutResumedAutoDetectedHaptic.allCases.map({ .workoutResumedAutoDetectedHaptic($0) }) +
        AlertPaceAboveHaptic.allCases.map({ .alertPaceAboveHaptic($0) }) +
        AlertPaceBelowHaptic.allCases.map({ .alertPaceBelowHaptic($0) }) +
        AlertVCGroupInvitationHaptic.allCases.map({ .alertVCGroupInvitationHaptic($0) }) +
        AlertCriticalHaptic.allCases.map({ .alertCriticalHaptic($0) }) +
        AlertFirstPartyHaptic.allCases.map({ .alertFirstPartyHaptic($0) }) +
        AlertHealthNotificationUrgentHaptic.allCases.map({ .alertHealthNotificationUrgentHaptic($0) }) +
        HeadphoneAudioExposureLimitExceededHaptic.allCases.map({ .headphoneAudioExposureLimitExceededHaptic($0) }) +
        PushToTalkJoinedHaptic.allCases.map({ .pushToTalkJoinedHaptic($0) }) +
        PushToTalkLeftHaptic.allCases.map({ .pushToTalkLeftHaptic($0) }) +
        PushToTalkUnmuteHaptic.allCases.map({ .pushToTalkUnmuteHaptic($0) }) +
        PushToTalkMuteHaptic.allCases.map({ .pushToTalkMuteHaptic($0) }) +
        PushToTalkUnmuteFailHaptic.allCases.map({ .pushToTalkUnmuteFailHaptic($0) }) +
        AlertIntervalEndedHaptic.allCases.map({ .alertIntervalEndedHaptic($0) }) +
        AlertIntervalUpcomingHaptic.allCases.map({ .alertIntervalUpcomingHaptic($0) }) +
        ElevationAlertHaptic.allCases.map({ .elevationAlertHaptic($0) }) +
        IdCardSenderConfirmationHaptic.allCases.map({ .idCardSenderConfirmationHaptic($0) }) +
        IdCardReceiverConfirmationHaptic.allCases.map({ .idCardReceiverConfirmationHaptic($0) }) +
        IdCardReceiverConnectHaptic.allCases.map({ .idCardReceiverConnectHaptic($0) }) +
        [focusChangeKeyboard, focusChangeAppIcon, focusChangeLarge, focusChangeSmall, navigationPush, navigationPop, keyboardPressNormal, keyboardPressDelete, keyboardPressClear, connectPower, mediaPaused, mediaHandoff, screenCapture, acknowledgmentSent, acknowledgmentReceived, lowPower, failedUnlock, jblBegin, jblConfirm, jblCancel, jblAmbiguous, jblNoMatch, vcInvitationAccepted, vcRinging, vcEnded, goToSleepAlert, warsaw, pearlSuccess, pearlFailure, usbHardeningAlert, paymentReceived, ringerVibeChanged, silentVibeChanged, vibrateAlways, headphoneAudioExposureLimitExceeded, healthNotificationUrgent, navigationGenericManeuver, notificationHaptic, ringtoneUSHaptic, ringtoneUKHaptic, alarmHaptic, siriStartHaptic, siriStopSuccessHaptic, siriStopFailureHaptic, stockholmHaptic, beatHaptic, rubberBandHaptic, doNotDisturbHaptic, uiConfirmationHaptic, etHeartbeatHaptic, timerHaptic, navigationLeftTurnHaptic, navigationRightTurnHaptic, detentHaptic, navigationGenericManeuverHaptic, cameraCountdownTickHaptic, cameraCountdownImminentHaptic, etRemoteTapReceiveHaptic, etRemoteTapSendHaptic, etBeginNotificationHaptic, doNotDisturbExpiryWarningHaptic, stockholmActiveHaptic, stockholmActiveSingleCycleHaptic, stockholmFailureHaptic, sedentaryTimerHaptic, hourlyChimeHaptic, previewAudioAndHaptic, alertActivityGoalAttainedHaptic, alertActivityGoalBehindHaptic, alertActivityGoalCloseHaptic, alertCalendarHaptic, alertPassbookBalanceHaptic, alertPassbookGeofenceHaptic, alertPhotostreamActivityHaptic, alertReminderDueHaptic, alertWalkieTalkieHaptic, batteryMagsafeHaptic, buddyPairingFailureHaptic, buddyPairingSuccessHaptic, alertMapsDirectionsInAppHaptic, messagesIncomingHaptic, messagesOutgoingHaptic, onOffPasscodeFailureHaptic, orbInvokeHaptic, orbLayersHaptic, phoneHangUpHaptic, photosZoomDetentHaptic, qbDictationHaptic, springboardEdgeUniverseHaptic, springboardHardStopHaptic, stopwatchLapHaptic, stopwatchResetHaptic, stopwatchStartHaptic, stopwatchStopHaptic, timerCancelHaptic, timerPauseHaptic, timerStartHaptic, timerWheelHoursDetentHaptic, walkieTalkieActiveStartHaptic, workoutCompleteHaptic, workoutCountdownHaptic, alert3rdPartyHaptic, workoutSelectHaptic, workoutPressStartHaptic, clockAnalogTickHaptic, timerWheelMinutesDetentHaptic, phoneAnswerHaptic, phoneHoldHaptic, walkieTalkieActiveEndHaptic, uiSnapHaptic, uiSwitchOnHaptic, uiSwitchOffHaptic, uiSwipeHaptic, systemStartupHaptic, buddyPairingRemoteConnectionHaptic, buddyPairingRemoteTapHaptic, qbDictationOffHaptic, ringtoneDuckedUSHaptic, ringtoneDuckedUKHaptic, salientNotificationHaptic, notificationSalientHaptic, etBeginNotificationSalientHaptic, alertCalendarSalientHaptic, alertReminderDueSalientHaptic, alert3rdPartySalientHaptic, _3rdPartyDirectionUpHaptic, _3rdPartyDirectionDownHaptic, _3rdPartySuccessHaptic, _3rdPartyFailureHaptic, _3rdPartyRetryHaptic, _3rdPartyStartHaptic, _3rdPartyStopHaptic, alarmNightstandHaptic, navigationLeftTurnSalientHaptic, navigationRightTurnSalientHaptic, navigationGenericManeuverSalientHaptic, sedentaryTimerSalientHaptic, alertActivityGoalAttainedSalientHaptic, alertActivityGoalBehindSalientHaptic, alertPassbookGeofenceSalientHaptic, workoutSavedHaptic, orbPeekHaptic, orbPopHaptic, orbNegativeHaptic, voiceOverClickHaptic, siriAutoSendHaptic, hummingbirdCycleHaptic, hummingbirdCompletionHaptic, hummingbirdNotificationHaptic, remoteCameraShutterBurstBeginHaptic, remoteCameraShutterBurstEndHaptic, workoutPausedHaptic, workoutResumedHaptic, goToSleepHaptic, warsawHaptic, autoUnlockHaptic, alertActivityFriendsGoalAttainedHaptic, alertSpartanConnectingHaptic, alertSpartanConnectingLowLatencyHaptic, alertSpartanConnectedLowLatencyHaptic, alertSpartanDisconnectedLowLatencyHaptic, alertSpartanReminderEscalationLevel1Haptic, alertSpartanReminderEscalationLevel2Haptic, alertSpartanReminderEscalationLevel3Haptic, alertSpartanReminderEscalationLevel4Haptic, accessScanCompleteHaptic, buddyMigrationStartHaptic, sosFallDetectionPromptHaptic, sosEmergencyContactTextPromptHaptic, walkieTalkieReceiveStartHaptic, walkieTalkieReceiveEndHaptic, alertHealthHaptic, systemNotificationHaptic, sosFallDetectionPromptEscalationHaptic, walkAMileHaptic, healthReadingCompleteHaptic, healthReadingFailHaptic, vibrate]
        if #available(iOS 18.2, *) {
            result.append(.remoteAttentionRequestAlert)
        }
        if #available(iOS 18, *) {
            result.append(.nfcCardProvisioned)
        }
        if #available(iOS 18, *) {
            result.append(.nfcCardComplete)
        }
        if #available(iOS 18, *) {
            result.append(.nfcCardError)
        }
        if #available(iOS 18, *) {
            result.append(.headGesturesDoubleNod)
        }
        if #available(iOS 18, *) {
            result.append(.headGesturesDoubleShake)
        }
        if #available(iOS 18, *) {
            result.append(.headGesturesPartialNod)
        }
        if #available(iOS 18, *) {
            result.append(.headGesturesPartialShake)
        }
        if #available(iOS 18, *) {
            result.append(.regattaTimer)
        }
        if #available(iOS 16, *) {
            result.append(.doorbell)
        }
        if #available(iOS 16, *) {
            result.append(.paymentReceivedFailure)
        }
        if #available(iOS 18.1, *) {
            result.append(.earInteractionComplete)
        }
        if #available(iOS 16, *) {
            result.append(.timeToRun)
        }
        if #available(iOS 16, *) {
            result.append(.timeToWalk)
        }
        if #available(iOS 16, *) {
            result.append(.deviceShutdown)
        }
        if #available(iOS 16.2, *) {
            result.append(.pushToTalkJoined)
        }
        if #available(iOS 16.2, *) {
            result.append(.pushToTalkLeft)
        }
        if #available(iOS 16.2, *) {
            result.append(.pushToTalkUnmute)
        }
        if #available(iOS 16.2, *) {
            result.append(.pushToTalkMute)
        }
        if #available(iOS 16.2, *) {
            result.append(.pushToTalkUnmuteFail)
        }
        if #available(iOS 18, *) {
            result.append(.dictationBegin)
        }
        if #available(iOS 18, *) {
            result.append(.dictationCancel)
        }
        if #available(iOS 18, *) {
            result.append(.dictationConfirm)
        }
        if #available(iOS 16, *) {
            result.append(.pinEnterDigitAX)
        }
        if #available(iOS 16, *) {
            result.append(.pinDeleteAX)
        }
        if #available(iOS 16, *) {
            result.append(.pinSubmitAX)
        }
        if #available(iOS 16, *) {
            result.append(.pinUnexpected)
        }
        if #available(iOS 16, *) {
            result.append(.pinEnterDigit)
        }
        if #available(iOS 16, *) {
            result.append(.pinDelete)
        }
        if #available(iOS 16, *) {
            result.append(.alertLimitExceededHaptic)
        }
        if #available(iOS 16, *) {
            result.append(.sirenCountdownMajorHaptic)
        }
        if #available(iOS 16, *) {
            result.append(.sirenCountdownMinorHaptic)
        }
        if #available(iOS 16, *) {
            result.append(.sunlightPromptHaptic)
        }
        if #available(iOS 16, *) {
            result.append(.doorbellHaptic)
        }
        if #available(iOS 16, *) {
            result.append(.timeToRunHaptic)
        }
        if #available(iOS 16, *) {
            result.append(.timeToWalkHaptic)
        }
        if #available(iOS 17, *) {
            result.append(.workoutPrecisionStartHaptic)
        }
        if #available(iOS 16, *) {
            result.append(.audioPrewarm)
        }
        if #available(iOS 16, *) {
            result.append(.hapticPrewarm)
        }
        return result
    }
}
