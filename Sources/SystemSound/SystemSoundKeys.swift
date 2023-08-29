import AudioToolbox

public struct SystemSoundKey: CaseIterable, Equatable, Codable, Hashable {

    public let name: String
    public let ids: [Int]
    public var systemSoundId: SystemSoundID {
        SystemSoundID(ids[0])
    }

    public init(name: String, ids: [Int]) {
        self.name = name
        self.ids = ids
    }
}

extension SystemSoundKey {
    // ringback_tone_ansi
    public static let ringbackToneAnsi = SystemSoundKey(
        name: "ringback_tone_ansi",
        ids: [30]
    )

    // ringback_tone_cept
    public static let ringbackToneCept = SystemSoundKey(
        name: "ringback_tone_cept",
        ids: [31]
    )

    // busy_tone_ansi
    public static let busyToneAnsi = SystemSoundKey(
        name: "busy_tone_ansi",
        ids: [32]
    )

    // busy_tone_cept
    public static let busyToneCept = SystemSoundKey(
        name: "busy_tone_cept",
        ids: [33]
    )

    // call_waiting_tone_ansi
    public static let callWaitingToneAnsi = SystemSoundKey(
        name: "call_waiting_tone_ansi",
        ids: [34]
    )

    // call_waiting_tone_cept
    public static let callWaitingToneCept = SystemSoundKey(
        name: "call_waiting_tone_cept",
        ids: [35]
    )

    // end_call_tone_cept
    public static let endCallToneCept = SystemSoundKey(
        name: "end_call_tone_cept",
        ids: [36]
    )

    // ringback_tone_hk
    public static let ringbackToneHk = SystemSoundKey(
        name: "ringback_tone_hk",
        ids: [37]
    )

    // ringback_tone_aus
    public static let ringbackToneAus = SystemSoundKey(
        name: "ringback_tone_aus",
        ids: [38]
    )

    // ringback_tone_uk
    public static let ringbackToneUk = SystemSoundKey(
        name: "ringback_tone_uk",
        ids: [39]
    )

    // new-mail
    public static let newMail = SystemSoundKey(
        name: "new-mail",
        ids: [1000, 1302]
    )

    // mail-sent
    public static let mailSent = SystemSoundKey(
        name: "mail-sent",
        ids: [1001, 1303]
    )

    // sms-received1
    public static let smsReceived1 = SystemSoundKey(
        name: "sms-received1",
        ids: [1002, 1007, 1012, 1015, 1300, 1307, 1312, 1315]
    )

    // ReceivedMessage
    public static let receivedMessage = SystemSoundKey(
        name: "ReceivedMessage",
        ids: [1003, 1301]
    )

    // SentMessage
    public static let sentMessage = SystemSoundKey(
        name: "SentMessage",
        ids: [1004]
    )

    // alarm
    public static let alarm = SystemSoundKey(
        name: "alarm",
        ids: [1005, 1017, 1304, 1317]
    )

    // low_power
    public static let lowPower = SystemSoundKey(
        name: "low_power",
        ids: [1006]
    )

    // sms-received2
    public static let smsReceived2 = SystemSoundKey(
        name: "sms-received2",
        ids: [1008, 1308]
    )

    // sms-received3
    public static let smsReceived3 = SystemSoundKey(
        name: "sms-received3",
        ids: [1009, 1309]
    )

    // sms-received4
    public static let smsReceived4 = SystemSoundKey(
        name: "sms-received4",
        ids: [1010, 1310]
    )

    // sms-received5
    public static let smsReceived5 = SystemSoundKey(
        name: "sms-received5",
        ids: [1013, 1313]
    )

    // sms-received6
    public static let smsReceived6 = SystemSoundKey(
        name: "sms-received6",
        ids: [1014, 1314]
    )

    // tweet_sent
    public static let tweetSent = SystemSoundKey(
        name: "tweet_sent",
        ids: [1016]
    )

    // Swish
    public static let swish = SystemSoundKey(
        name: "Swish",
        ids: [1018, 1318]
    )

    // Anticipate
    public static let anticipate = SystemSoundKey(
        name: "Anticipate",
        ids: [1020, 1320]
    )

    // Bloom
    public static let bloom = SystemSoundKey(
        name: "Bloom",
        ids: [1021, 1321]
    )

    // Calypso
    public static let calypso = SystemSoundKey(
        name: "Calypso",
        ids: [1022, 1322]
    )

    // Choo_Choo
    public static let chooChoo = SystemSoundKey(
        name: "Choo_Choo",
        ids: [1023, 1323]
    )

    // Descent
    public static let descent = SystemSoundKey(
        name: "Descent",
        ids: [1024, 1324]
    )

    // Fanfare
    public static let fanfare = SystemSoundKey(
        name: "Fanfare",
        ids: [1025, 1325]
    )

    // Ladder
    public static let ladder = SystemSoundKey(
        name: "Ladder",
        ids: [1026, 1326]
    )

    // Minuet
    public static let minuet = SystemSoundKey(
        name: "Minuet",
        ids: [1027, 1327]
    )

    // News_Flash
    public static let newsFlash = SystemSoundKey(
        name: "News_Flash",
        ids: [1028, 1328]
    )

    // Noir
    public static let noir = SystemSoundKey(
        name: "Noir",
        ids: [1029, 1329]
    )

    // Sherwood_Forest
    public static let sherwoodForest = SystemSoundKey(
        name: "Sherwood_Forest",
        ids: [1030, 1330]
    )

    // Spell
    public static let spell = SystemSoundKey(
        name: "Spell",
        ids: [1031, 1331]
    )

    // Suspense
    public static let suspense = SystemSoundKey(
        name: "Suspense",
        ids: [1032, 1332]
    )

    // Telegraph
    public static let telegraph = SystemSoundKey(
        name: "Telegraph",
        ids: [1033, 1333]
    )

    // Tiptoes
    public static let tiptoes = SystemSoundKey(
        name: "Tiptoes",
        ids: [1034, 1334]
    )

    // Typewriters
    public static let typewriters = SystemSoundKey(
        name: "Typewriters",
        ids: [1035, 1335]
    )

    // Update
    public static let update = SystemSoundKey(
        name: "Update",
        ids: [1036, 1336]
    )

    // ussd
    public static let ussd = SystemSoundKey(
        name: "ussd",
        ids: [1050]
    )

    // SIMToolkitCallDropped
    public static let sIMToolkitCallDropped = SystemSoundKey(
        name: "SIMToolkitCallDropped",
        ids: [1051]
    )

    // SIMToolkitGeneralBeep
    public static let sIMToolkitGeneralBeep = SystemSoundKey(
        name: "SIMToolkitGeneralBeep",
        ids: [1052]
    )

    // SIMToolkitNegativeACK
    public static let sIMToolkitNegativeACK = SystemSoundKey(
        name: "SIMToolkitNegativeACK",
        ids: [1053]
    )

    // SIMToolkitPositiveACK
    public static let sIMToolkitPositiveACK = SystemSoundKey(
        name: "SIMToolkitPositiveACK",
        ids: [1054]
    )

    // SIMToolkitSMS
    public static let sIMToolkitSMS = SystemSoundKey(
        name: "SIMToolkitSMS",
        ids: [1055]
    )

    // Tink
    public static let tink = SystemSoundKey(
        name: "Tink",
        ids: [1057, 1103]
    )

    // WebcamStart
    public static let webcamStart = SystemSoundKey(
        name: "WebcamStart",
        ids: [1060]
    )

    // ct-busy
    public static let ctBusy = SystemSoundKey(
        name: "ct-busy",
        ids: [1070]
    )

    // ct-congestion
    public static let ctCongestion = SystemSoundKey(
        name: "ct-congestion",
        ids: [1071]
    )

    // ct-path-ack
    public static let ctPathAck = SystemSoundKey(
        name: "ct-path-ack",
        ids: [1072]
    )

    // ct-error
    public static let ctError = SystemSoundKey(
        name: "ct-error",
        ids: [1073]
    )

    // ct-call-waiting
    public static let ctCallWaiting = SystemSoundKey(
        name: "ct-call-waiting",
        ids: [1074, 1153]
    )

    // ct-keytone2
    public static let ctKeytone2 = SystemSoundKey(
        name: "ct-keytone2",
        ids: [1075]
    )

    // lock
    public static let lock = SystemSoundKey(
        name: "lock",
        ids: [1100, 1305]
    )

    // key_press_click
    public static let keyPressClick = SystemSoundKey(
        name: "key_press_click",
        ids: [1104, 1123, 1306]
    )

    // Tock
    public static let tock = SystemSoundKey(
        name: "Tock",
        ids: [1105]
    )

    // connect_power
    public static let connectPower = SystemSoundKey(
        name: "connect_power",
        ids: [1106, 1360, 1361]
    )

    // RingerChanged
    public static let ringerChanged = SystemSoundKey(
        name: "RingerChanged",
        ids: [1107]
    )

    // photoShutter
    public static let photoShutter = SystemSoundKey(
        name: "photoShutter",
        ids: [1108]
    )

    // shake
    public static let shake = SystemSoundKey(
        name: "shake",
        ids: [1109]
    )

    // jbl_begin
    public static let jblBegin = SystemSoundKey(
        name: "jbl_begin",
        ids: [1110]
    )

    // jbl_confirm
    public static let jblConfirm = SystemSoundKey(
        name: "jbl_confirm",
        ids: [1111]
    )

    // jbl_cancel
    public static let jblCancel = SystemSoundKey(
        name: "jbl_cancel",
        ids: [1112]
    )

    // begin_record
    public static let beginRecord = SystemSoundKey(
        name: "begin_record",
        ids: [1113, 1117]
    )

    // end_record
    public static let endRecord = SystemSoundKey(
        name: "end_record",
        ids: [1114, 1118]
    )

    // jbl_ambiguous
    public static let jblAmbiguous = SystemSoundKey(
        name: "jbl_ambiguous",
        ids: [1115]
    )

    // jbl_no_match
    public static let jblNoMatch = SystemSoundKey(
        name: "jbl_no_match",
        ids: [1116]
    )

    // camera_shutter_burst
    public static let cameraShutterBurst = SystemSoundKey(
        name: "camera_shutter_burst",
        ids: [1119]
    )

    // airdrop_invite
    @available(iOS 17.0, *)
    public static let airdropInvite = SystemSoundKey(
        name: "airdrop_invite",
        ids: [1120]
    )

    // camera_shutter_burst_begin
    public static let cameraShutterBurstBegin = SystemSoundKey(
        name: "camera_shutter_burst_begin",
        ids: [1121]
    )

    // camera_shutter_burst_end
    public static let cameraShutterBurstEnd = SystemSoundKey(
        name: "camera_shutter_burst_end",
        ids: [1122]
    )

    // focus_change_keyboard
    public static let focusChangeKeyboard = SystemSoundKey(
        name: "focus_change_keyboard",
        ids: [1124]
    )

    // focus_change_app_icon
    public static let focusChangeAppIcon = SystemSoundKey(
        name: "focus_change_app_icon",
        ids: [1125]
    )

    // focus_change_large
    public static let focusChangeLarge = SystemSoundKey(
        name: "focus_change_large",
        ids: [1126]
    )

    // focus_change_small
    public static let focusChangeSmall = SystemSoundKey(
        name: "focus_change_small",
        ids: [1127]
    )

    // navigation_push
    public static let navigationPush = SystemSoundKey(
        name: "navigation_push",
        ids: [1128]
    )

    // navigation_pop
    public static let navigationPop = SystemSoundKey(
        name: "navigation_pop",
        ids: [1129]
    )

    // keyboard_press_normal
    public static let keyboardPressNormal = SystemSoundKey(
        name: "keyboard_press_normal",
        ids: [1130]
    )

    // keyboard_press_delete
    public static let keyboardPressDelete = SystemSoundKey(
        name: "keyboard_press_delete",
        ids: [1131]
    )

    // keyboard_press_clear
    public static let keyboardPressClear = SystemSoundKey(
        name: "keyboard_press_clear",
        ids: [1132]
    )

    // vc~invitation-accepted
    public static let vcInvitationAccepted = SystemSoundKey(
        name: "vc~invitation-accepted",
        ids: [1150]
    )

    // vc~ringing
    public static let vcRinging = SystemSoundKey(
        name: "vc~ringing",
        ids: [1151, 1154]
    )

    // vc~ended
    public static let vcEnded = SystemSoundKey(
        name: "vc~ended",
        ids: [1152]
    )

    // key_press_delete
    public static let keyPressDelete = SystemSoundKey(
        name: "key_press_delete",
        ids: [1155]
    )

    // key_press_modifier
    public static let keyPressModifier = SystemSoundKey(
        name: "key_press_modifier",
        ids: [1156]
    )

    // wheels_of_time
    public static let wheelsOfTime = SystemSoundKey(
        name: "wheels_of_time",
        ids: [1157]
    )

    // go_to_sleep_alert
    public static let goToSleepAlert = SystemSoundKey(
        name: "go_to_sleep_alert",
        ids: [1158]
    )

    // warsaw
    public static let warsaw = SystemSoundKey(
        name: "warsaw",
        ids: [1159]
    )

    // nfc_scan_complete
    public static let nfcScanComplete = SystemSoundKey(
        name: "nfc_scan_complete",
        ids: [1160]
    )

    // access_scan_complete
    public static let accessScanComplete = SystemSoundKey(
        name: "access_scan_complete",
        ids: [1163]
    )

    // 3rd_party_critical
    public static let _3rdPartyCritical = SystemSoundKey(
        name: "3rd_party_critical",
        ids: [1165]
    )

    // PaymentReceived
    public static let paymentReceived = SystemSoundKey(
        name: "PaymentReceived",
        ids: [1166]
    )

    // Doorbell
    public static let doorbell = SystemSoundKey(
        name: "Doorbell",
        ids: [1167]
    )

    // PaymentReceivedFailure
    public static let paymentReceivedFailure = SystemSoundKey(
        name: "PaymentReceivedFailure",
        ids: [1168]
    )

    // dtmf-0
    public static let dtmf0 = SystemSoundKey(
        name: "dtmf-0",
        ids: [1200]
    )

    // dtmf-1
    public static let dtmf1 = SystemSoundKey(
        name: "dtmf-1",
        ids: [1201]
    )

    // dtmf-2
    public static let dtmf2 = SystemSoundKey(
        name: "dtmf-2",
        ids: [1202]
    )

    // dtmf-3
    public static let dtmf3 = SystemSoundKey(
        name: "dtmf-3",
        ids: [1203]
    )

    // dtmf-4
    public static let dtmf4 = SystemSoundKey(
        name: "dtmf-4",
        ids: [1204]
    )

    // dtmf-5
    public static let dtmf5 = SystemSoundKey(
        name: "dtmf-5",
        ids: [1205]
    )

    // dtmf-6
    public static let dtmf6 = SystemSoundKey(
        name: "dtmf-6",
        ids: [1206]
    )

    // dtmf-7
    public static let dtmf7 = SystemSoundKey(
        name: "dtmf-7",
        ids: [1207]
    )

    // dtmf-8
    public static let dtmf8 = SystemSoundKey(
        name: "dtmf-8",
        ids: [1208]
    )

    // dtmf-9
    public static let dtmf9 = SystemSoundKey(
        name: "dtmf-9",
        ids: [1209]
    )

    // dtmf-star
    public static let dtmfStar = SystemSoundKey(
        name: "dtmf-star",
        ids: [1210]
    )

    // dtmf-pound
    public static let dtmfPound = SystemSoundKey(
        name: "dtmf-pound",
        ids: [1211]
    )

    // DeviceShutdown
    public static let deviceShutdown = SystemSoundKey(
        name: "DeviceShutdown",
        ids: [1253]
    )

    // long_low_short_high
    public static let longLowShortHigh = SystemSoundKey(
        name: "long_low_short_high",
        ids: [1254]
    )

    // short_double_high
    public static let shortDoubleHigh = SystemSoundKey(
        name: "short_double_high",
        ids: [1255]
    )

    // short_low_high
    public static let shortLowHigh = SystemSoundKey(
        name: "short_low_high",
        ids: [1256]
    )

    // short_double_low
    public static let shortDoubleLow = SystemSoundKey(
        name: "short_double_low",
        ids: [1257, 1258]
    )

    // middle_9_short_double_low
    public static let middle9ShortDoubleLow = SystemSoundKey(
        name: "middle_9_short_double_low",
        ids: [1259]
    )

    // camera_timer_final_second
    public static let cameraTimerFinalSecond = SystemSoundKey(
        name: "camera_timer_final_second",
        ids: [1260]
    )

    // camera_timer_countdown
    public static let cameraTimerCountdown = SystemSoundKey(
        name: "camera_timer_countdown",
        ids: [1261]
    )

    // health_notification
    public static let healthNotification = SystemSoundKey(
        name: "health_notification",
        ids: [1262]
    )

    // MultiwayJoin
    public static let multiwayJoin = SystemSoundKey(
        name: "MultiwayJoin",
        ids: [1263, 1556]
    )

    // MultiwayLeave
    public static let multiwayLeave = SystemSoundKey(
        name: "MultiwayLeave",
        ids: [1264, 1557]
    )

    // multiway_invitation
    public static let multiway_invitation = SystemSoundKey(
        name: "multiway_invitation",
        ids: [1265]
    )

    // PushToTalkJoined
    public static let pushToTalkJoined = SystemSoundKey(
        name: "PushToTalkJoined",
        ids: [1270, 1576]
    )

    // PushToTalkLeft
    public static let pushToTalkLeft = SystemSoundKey(
        name: "PushToTalkLeft",
        ids: [1271, 1577]
    )

    // PushToTalkUnmute
    public static let pushToTalkUnmute = SystemSoundKey(
        name: "PushToTalkUnmute",
        ids: [1272, 1578]
    )

    // PushToTalkMute
    public static let pushToTalkMute = SystemSoundKey(
        name: "PushToTalkMute",
        ids: [1273, 1579]
    )

    // PushToTalkUnmuteFail
    public static let pushToTalkUnmuteFail = SystemSoundKey(
        name: "PushToTalkUnmuteFail",
        ids: [1274, 1580]
    )

    // SenderConfirmation
    @available(iOS 17.0, *)
    public static let senderConfirmation = SystemSoundKey(
        name: "SenderConfirmation",
        ids: [1275]
    )

    // ReceiverConfirmation
    @available(iOS 17.0, *)
    public static let receiverConfirmation = SystemSoundKey(
        name: "ReceiverConfirmation",
        ids: [1276]
    )

    // ReceiverConnect
    @available(iOS 17.0, *)
    public static let receiverConnect = SystemSoundKey(
        name: "ReceiverConnect",
        ids: [1277]
    )

    // PINEnterDigit_AX
    public static let pINEnterDigitAX = SystemSoundKey(
        name: "PINEnterDigit_AX",
        ids: [1340]
    )

    // PINDelete_AX
    public static let pINDeleteAX = SystemSoundKey(
        name: "PINDelete_AX",
        ids: [1341]
    )

    // PINSubmit_AX
    public static let pINSubmitAX = SystemSoundKey(
        name: "PINSubmit_AX",
        ids: [1342]
    )

    // PINUnexpected
    public static let pINUnexpected = SystemSoundKey(
        name: "PINUnexpected",
        ids: [1343]
    )

    // PINEnterDigit
    public static let pINEnterDigit = SystemSoundKey(
        name: "PINEnterDigit",
        ids: [1344]
    )

    // PINDelete
    public static let pINDelete = SystemSoundKey(
        name: "PINDelete",
        ids: [1345]
    )

    // HeadphoneAudioExposureLimitExceeded
    public static let headphoneAudioExposureLimitExceeded = SystemSoundKey(
        name: "HeadphoneAudioExposureLimitExceeded",
        ids: [1362, 1572]
    )

    // HealthNotificationUrgent
    public static let healthNotificationUrgent = SystemSoundKey(
        name: "HealthNotificationUrgent",
        ids: [1363, 1561]
    )

    // MicMute
    public static let micMute = SystemSoundKey(
        name: "MicMute",
        ids: [1364]
    )

    // MicUnmute
    public static let micUnmute = SystemSoundKey(
        name: "MicUnmute",
        ids: [1365]
    )

    // MicUnmuteFail
    public static let micUnmuteFail = SystemSoundKey(
        name: "MicUnmuteFail",
        ids: [1366]
    )

    // ScreenSharingStarted
    public static let screenSharingStarted = SystemSoundKey(
        name: "ScreenSharingStarted",
        ids: [1367]
    )

    // MediaPaused
    public static let mediaPaused = SystemSoundKey(
        name: "MediaPaused",
        ids: [1368]
    )

    // MediaHandoff
    public static let mediaHandoff = SystemSoundKey(
        name: "MediaHandoff",
        ids: [1369]
    )

    // NavigationGenericManeuver
    public static let navigationGenericManeuver = SystemSoundKey(
        name: "NavigationGenericManeuver",
        ids: [1370]
    )

    // ScreenCapture
    public static let screenCapture = SystemSoundKey(
        name: "ScreenCapture",
        ids: [1393, 1573]
    )

    // payment_success
    public static let paymentSuccess = SystemSoundKey(
        name: "payment_success",
        ids: [1394]
    )

    // payment_failure
    public static let paymentFailure = SystemSoundKey(
        name: "payment_failure",
        ids: [1395]
    )

    // acknowledgment_sent
    public static let acknowledgmentSent = SystemSoundKey(
        name: "acknowledgment_sent",
        ids: [1396]
    )

    // acknowledgment_received
    public static let acknowledgmentReceived = SystemSoundKey(
        name: "acknowledgment_received",
        ids: [1397]
    )

    // nfc_scan_failure
    public static let nfcScanFailure = SystemSoundKey(
        name: "nfc_scan_failure",
        ids: [1398]
    )

    // Notification_Haptic
    public static let notificationHaptic = SystemSoundKey(
        name: "Notification_Haptic",
        ids: [1400, 1436, 1437, 1438, 1439, 1444]
    )

    // Ringtone_US_Haptic
    public static let ringtoneUSHaptic = SystemSoundKey(
        name: "Ringtone_US_Haptic",
        ids: [1401]
    )

    // Ringtone_UK_Haptic
    public static let ringtoneUKHaptic = SystemSoundKey(
        name: "Ringtone_UK_Haptic",
        ids: [1402]
    )

    // Alarm_Haptic
    public static let alarmHaptic = SystemSoundKey(
        name: "Alarm_Haptic",
        ids: [1403]
    )

    // SiriStart_Haptic
    public static let siriStartHaptic = SystemSoundKey(
        name: "SiriStart_Haptic",
        ids: [1404]
    )

    // SiriStopSuccess_Haptic
    public static let siriStopSuccessHaptic = SystemSoundKey(
        name: "SiriStopSuccess_Haptic",
        ids: [1405]
    )

    // SiriStopFailure_Haptic
    public static let siriStopFailureHaptic = SystemSoundKey(
        name: "SiriStopFailure_Haptic",
        ids: [1406]
    )

    // Stockholm_Haptic
    public static let stockholmHaptic = SystemSoundKey(
        name: "Stockholm_Haptic",
        ids: [1407]
    )

    // Beat_Haptic
    public static let beatHaptic = SystemSoundKey(
        name: "Beat_Haptic",
        ids: [1408]
    )

    // DoNotDisturb_Haptic
    public static let doNotDisturbHaptic = SystemSoundKey(
        name: "DoNotDisturb_Haptic",
        ids: [1410]
    )

    // Timer_Haptic
    public static let timerHaptic = SystemSoundKey(
        name: "Timer_Haptic",
        ids: [1413]
    )

    // NavigationLeftTurn_Haptic
    public static let navigationLeftTurnHaptic = SystemSoundKey(
        name: "NavigationLeftTurn_Haptic",
        ids: [1414]
    )

    // NavigationRightTurn_Haptic
    public static let navigationRightTurnHaptic = SystemSoundKey(
        name: "NavigationRightTurn_Haptic",
        ids: [1415]
    )

    // Detent_Haptic
    public static let detentHaptic = SystemSoundKey(
        name: "Detent_Haptic",
        ids: [1416]
    )

    // NavigationGenericManeuver_Haptic
    public static let navigationGenericManeuverHaptic = SystemSoundKey(
        name: "NavigationGenericManeuver_Haptic",
        ids: [1417]
    )

    // CameraCountdownTick_Haptic
    public static let cameraCountdownTickHaptic = SystemSoundKey(
        name: "CameraCountdownTick_Haptic",
        ids: [1418]
    )

    // CameraCountdownImminent_Haptic
    public static let cameraCountdownImminentHaptic = SystemSoundKey(
        name: "CameraCountdownImminent_Haptic",
        ids: [1419]
    )

    // ET_RemoteTap_Receive_Haptic
    public static let eTRemoteTapReceiveHaptic = SystemSoundKey(
        name: "ET_RemoteTap_Receive_Haptic",
        ids: [1420]
    )

    // ET_RemoteTap_Send_Haptic
    public static let eTRemoteTapSendHaptic = SystemSoundKey(
        name: "ET_RemoteTap_Send_Haptic",
        ids: [1421]
    )

    // ET_BeginNotification_Haptic
    public static let eTBeginNotificationHaptic = SystemSoundKey(
        name: "ET_BeginNotification_Haptic",
        ids: [1422]
    )

    // StockholmActive_Haptic
    public static let stockholmActiveHaptic = SystemSoundKey(
        name: "StockholmActive_Haptic",
        ids: [1424]
    )

    // StockholmActiveSingleCycle_Haptic
    public static let stockholmActiveSingleCycleHaptic = SystemSoundKey(
        name: "StockholmActiveSingleCycle_Haptic",
        ids: [1425]
    )

    // StockholmFailure_Haptic
    public static let stockholmFailureHaptic = SystemSoundKey(
        name: "StockholmFailure_Haptic",
        ids: [1426]
    )

    // SedentaryTimer_Haptic
    public static let sedentaryTimerHaptic = SystemSoundKey(
        name: "SedentaryTimer_Haptic",
        ids: [1427]
    )

    // HourlyChime_Haptic
    public static let hourlyChimeHaptic = SystemSoundKey(
        name: "HourlyChime_Haptic",
        ids: [1428]
    )

    // Preview_AudioAndHaptic
    public static let previewAudioAndHaptic = SystemSoundKey(
        name: "Preview_AudioAndHaptic",
        ids: [1429]
    )

    // Alert_ActivityGoalAttained_Haptic
    public static let alertActivityGoalAttainedHaptic = SystemSoundKey(
        name: "Alert_ActivityGoalAttained_Haptic",
        ids: [1430]
    )

    // Alert_ActivityGoalBehind_Haptic
    public static let alertActivityGoalBehindHaptic = SystemSoundKey(
        name: "Alert_ActivityGoalBehind_Haptic",
        ids: [1431]
    )

    // Alert_ActivityGoalClose_Haptic
    public static let alertActivityGoalCloseHaptic = SystemSoundKey(
        name: "Alert_ActivityGoalClose_Haptic",
        ids: [1432]
    )

    // Alert_BatteryLow_10p_Haptic
    public static let alertBatteryLow10pHaptic = SystemSoundKey(
        name: "Alert_BatteryLow_10p_Haptic",
        ids: [1433]
    )

    // Alert_BatteryLow_5p_Haptic
    public static let alertBatteryLow5pHaptic = SystemSoundKey(
        name: "Alert_BatteryLow_5p_Haptic",
        ids: [1434]
    )

    // Alert_Calendar_Haptic
    public static let alertCalendarHaptic = SystemSoundKey(
        name: "Alert_Calendar_Haptic",
        ids: [1435]
    )

    // Alert_PassbookBalance_Haptic
    public static let alertPassbookBalanceHaptic = SystemSoundKey(
        name: "Alert_PassbookBalance_Haptic",
        ids: [1440]
    )

    // Alert_PassbookGeofence_Haptic
    public static let alertPassbookGeofenceHaptic = SystemSoundKey(
        name: "Alert_PassbookGeofence_Haptic",
        ids: [1441]
    )

    // Alert_PhotostreamActivity_Haptic
    public static let alertPhotostreamActivityHaptic = SystemSoundKey(
        name: "Alert_PhotostreamActivity_Haptic",
        ids: [1442]
    )

    // Alert_ReminderDue_Haptic
    public static let alertReminderDueHaptic = SystemSoundKey(
        name: "Alert_ReminderDue_Haptic",
        ids: [1443]
    )

    // Alert_WalkieTalkie_Haptic
    public static let alertWalkieTalkieHaptic = SystemSoundKey(
        name: "Alert_WalkieTalkie_Haptic",
        ids: [1445]
    )

    // BatteryMagsafe_Haptic
    public static let batteryMagsafeHaptic = SystemSoundKey(
        name: "BatteryMagsafe_Haptic",
        ids: [1446]
    )

    // BuddyPairingFailure_Haptic
    public static let buddyPairingFailureHaptic = SystemSoundKey(
        name: "BuddyPairingFailure_Haptic",
        ids: [1447]
    )

    // BuddyPairingSuccess_Haptic
    public static let buddyPairingSuccessHaptic = SystemSoundKey(
        name: "BuddyPairingSuccess_Haptic",
        ids: [1448]
    )

    // CameraShutter_Haptic
    public static let cameraShutterHaptic = SystemSoundKey(
        name: "CameraShutter_Haptic",
        ids: [1449]
    )

    // Alert_MapsDirectionsInApp_Haptic
    public static let alertMapsDirectionsInAppHaptic = SystemSoundKey(
        name: "Alert_MapsDirectionsInApp_Haptic",
        ids: [1450]
    )

    // MessagesIncoming_Haptic
    public static let messagesIncomingHaptic = SystemSoundKey(
        name: "MessagesIncoming_Haptic",
        ids: [1451]
    )

    // MessagesOutgoing_Haptic
    public static let messagesOutgoingHaptic = SystemSoundKey(
        name: "MessagesOutgoing_Haptic",
        ids: [1452]
    )

    // OnOffPasscodeFailure_Haptic
    public static let onOffPasscodeFailureHaptic = SystemSoundKey(
        name: "OnOffPasscodeFailure_Haptic",
        ids: [1453]
    )

    // OrbLayers_Haptic
    public static let orbLayersHaptic = SystemSoundKey(
        name: "OrbLayers_Haptic",
        ids: [1458]
    )

    // PhoneHangUp_Haptic
    public static let phoneHangUpHaptic = SystemSoundKey(
        name: "PhoneHangUp_Haptic",
        ids: [1459]
    )

    // PhotosZoomDetent_Haptic
    public static let photosZoomDetentHaptic = SystemSoundKey(
        name: "PhotosZoomDetent_Haptic",
        ids: [1460]
    )

    // QB_Dictation_Haptic
    public static let qBDictationHaptic = SystemSoundKey(
        name: "QB_Dictation_Haptic",
        ids: [1461]
    )

    // StopwatchLap_Haptic
    public static let stopwatchLapHaptic = SystemSoundKey(
        name: "StopwatchLap_Haptic",
        ids: [1464]
    )

    // StopwatchReset_Haptic
    public static let stopwatchResetHaptic = SystemSoundKey(
        name: "StopwatchReset_Haptic",
        ids: [1465]
    )

    // StopwatchStart_Haptic
    public static let stopwatchStartHaptic = SystemSoundKey(
        name: "StopwatchStart_Haptic",
        ids: [1466]
    )

    // StopwatchStop_Haptic
    public static let stopwatchStopHaptic = SystemSoundKey(
        name: "StopwatchStop_Haptic",
        ids: [1467]
    )

    // TimerCancel_Haptic
    public static let timerCancelHaptic = SystemSoundKey(
        name: "TimerCancel_Haptic",
        ids: [1468]
    )

    // TimerPause_Haptic
    public static let timerPauseHaptic = SystemSoundKey(
        name: "TimerPause_Haptic",
        ids: [1469]
    )

    // TimerStart_Haptic
    public static let timerStartHaptic = SystemSoundKey(
        name: "TimerStart_Haptic",
        ids: [1470]
    )

    // TimerWheelHoursDetent_Haptic
    public static let timerWheelHoursDetentHaptic = SystemSoundKey(
        name: "TimerWheelHoursDetent_Haptic",
        ids: [1471]
    )

    // WalkieTalkieActiveStart_Haptic
    public static let walkieTalkieActiveStartHaptic = SystemSoundKey(
        name: "WalkieTalkieActiveStart_Haptic",
        ids: [1472]
    )

    // WorkoutComplete_Haptic
    public static let workoutCompleteHaptic = SystemSoundKey(
        name: "WorkoutComplete_Haptic",
        ids: [1473]
    )

    // WorkoutCountdown_Haptic
    public static let workoutCountdownHaptic = SystemSoundKey(
        name: "WorkoutCountdown_Haptic",
        ids: [1474]
    )

    // Alert_3rdParty_Haptic
    public static let alert3rdPartyHaptic = SystemSoundKey(
        name: "Alert_3rdParty_Haptic",
        ids: [1475]
    )

    // WorkoutSelect_Haptic
    public static let workoutSelectHaptic = SystemSoundKey(
        name: "WorkoutSelect_Haptic",
        ids: [1476]
    )

    // WorkoutPressStart_Haptic
    public static let workoutPressStartHaptic = SystemSoundKey(
        name: "WorkoutPressStart_Haptic",
        ids: [1477]
    )

    // TimerWheelMinutesDetent_Haptic
    public static let timerWheelMinutesDetentHaptic = SystemSoundKey(
        name: "TimerWheelMinutesDetent_Haptic",
        ids: [1479]
    )

    // PhoneAnswer_Haptic
    public static let phoneAnswerHaptic = SystemSoundKey(
        name: "PhoneAnswer_Haptic",
        ids: [1480]
    )

    // PhoneHold_Haptic
    public static let phoneHoldHaptic = SystemSoundKey(
        name: "PhoneHold_Haptic",
        ids: [1481]
    )

    // WalkieTalkieActiveEnd_Haptic
    public static let walkieTalkieActiveEndHaptic = SystemSoundKey(
        name: "WalkieTalkieActiveEnd_Haptic",
        ids: [1482]
    )

    // UISwitch_On_Haptic
    public static let uISwitchOnHaptic = SystemSoundKey(
        name: "UISwitch_On_Haptic",
        ids: [1484]
    )

    // UISwitch_Off_Haptic
    public static let uISwitchOffHaptic = SystemSoundKey(
        name: "UISwitch_Off_Haptic",
        ids: [1485]
    )

    // UISwipe_Haptic
    public static let uISwipeHaptic = SystemSoundKey(
        name: "UISwipe_Haptic",
        ids: [1486]
    )

    // SystemStartup_Haptic
    public static let systemStartupHaptic = SystemSoundKey(
        name: "SystemStartup_Haptic",
        ids: [1487]
    )

    // BuddyPairingRemoteConnection_Haptic
    public static let buddyPairingRemoteConnectionHaptic = SystemSoundKey(
        name: "BuddyPairingRemoteConnection_Haptic",
        ids: [1488]
    )

    // BuddyPairingRemoteTap_Haptic
    public static let buddyPairingRemoteTapHaptic = SystemSoundKey(
        name: "BuddyPairingRemoteTap_Haptic",
        ids: [1489]
    )

    // QB_Dictation_Off_Haptic
    public static let qBDictationOffHaptic = SystemSoundKey(
        name: "QB_Dictation_Off_Haptic",
        ids: [1490]
    )

    // RingtoneDucked_US_Haptic
    public static let ringtoneDuckedUSHaptic = SystemSoundKey(
        name: "RingtoneDucked_US_Haptic",
        ids: [1491]
    )

    // RingtoneDucked_UK_Haptic
    public static let ringtoneDuckedUKHaptic = SystemSoundKey(
        name: "RingtoneDucked_UK_Haptic",
        ids: [1492]
    )

    // SalientNotification_Haptic
    public static let salientNotificationHaptic = SystemSoundKey(
        name: "SalientNotification_Haptic",
        ids: [1493]
    )

    // Notification_Salient_Haptic
    public static let notificationSalientHaptic = SystemSoundKey(
        name: "Notification_Salient_Haptic",
        ids: [1494, 1497, 1498, 1500]
    )

    // ET_BeginNotification_Salient_Haptic
    public static let eTBeginNotificationSalientHaptic = SystemSoundKey(
        name: "ET_BeginNotification_Salient_Haptic",
        ids: [1495]
    )

    // Alert_Calendar_Salient_Haptic
    public static let alertCalendarSalientHaptic = SystemSoundKey(
        name: "Alert_Calendar_Salient_Haptic",
        ids: [1496]
    )

    // Alert_ReminderDue_Salient_Haptic
    public static let alertReminderDueSalientHaptic = SystemSoundKey(
        name: "Alert_ReminderDue_Salient_Haptic",
        ids: [1499]
    )

    // Alert_3rdParty_Salient_Haptic
    public static let alert3rdPartySalientHaptic = SystemSoundKey(
        name: "Alert_3rdParty_Salient_Haptic",
        ids: [1501]
    )

    // 3rdParty_DirectionUp_Haptic
    public static let _3rdPartyDirectionUpHaptic = SystemSoundKey(
        name: "3rdParty_DirectionUp_Haptic",
        ids: [1502]
    )

    // 3rdParty_DirectionDown_Haptic
    public static let _3rdPartyDirectionDownHaptic = SystemSoundKey(
        name: "3rdParty_DirectionDown_Haptic",
        ids: [1503]
    )

    // 3rdParty_Success_Haptic
    public static let _3rdPartySuccessHaptic = SystemSoundKey(
        name: "3rdParty_Success_Haptic",
        ids: [1504]
    )

    // 3rdParty_Failure_Haptic
    public static let _3rdPartyFailureHaptic = SystemSoundKey(
        name: "3rdParty_Failure_Haptic",
        ids: [1505]
    )

    // 3rdParty_Retry_Haptic
    public static let _3rdPartyRetryHaptic = SystemSoundKey(
        name: "3rdParty_Retry_Haptic",
        ids: [1506]
    )

    // 3rdParty_Start_Haptic
    public static let _3rdPartyStartHaptic = SystemSoundKey(
        name: "3rdParty_Start_Haptic",
        ids: [1507]
    )

    // 3rdParty_Stop_Haptic
    public static let _3rdPartyStopHaptic = SystemSoundKey(
        name: "3rdParty_Stop_Haptic",
        ids: [1508]
    )

    // Alarm_Nightstand_Haptic
    public static let alarmNightstandHaptic = SystemSoundKey(
        name: "Alarm_Nightstand_Haptic",
        ids: [1509]
    )

    // Alert_BatteryLow_5p_Salient_Haptic
    public static let alertBatteryLow5pSalientHaptic = SystemSoundKey(
        name: "Alert_BatteryLow_5p_Salient_Haptic",
        ids: [1510]
    )

    // NavigationLeftTurn_Salient_Haptic
    public static let navigationLeftTurnSalientHaptic = SystemSoundKey(
        name: "NavigationLeftTurn_Salient_Haptic",
        ids: [1511]
    )

    // NavigationRightTurn_Salient_Haptic
    public static let navigationRightTurnSalientHaptic = SystemSoundKey(
        name: "NavigationRightTurn_Salient_Haptic",
        ids: [1512]
    )

    // NavigationGenericManeuver_Salient_Haptic
    public static let navigationGenericManeuverSalientHaptic = SystemSoundKey(
        name: "NavigationGenericManeuver_Salient_Haptic",
        ids: [1513]
    )

    // SedentaryTimer_Salient_Haptic
    public static let sedentaryTimerSalientHaptic = SystemSoundKey(
        name: "SedentaryTimer_Salient_Haptic",
        ids: [1514]
    )

    // Alert_ActivityGoalAttained_Salient_Haptic
    public static let alertActivityGoalAttainedSalientHaptic = SystemSoundKey(
        name: "Alert_ActivityGoalAttained_Salient_Haptic",
        ids: [1515]
    )

    // Alert_ActivityGoalBehind_Salient_Haptic
    public static let alertActivityGoalBehindSalientHaptic = SystemSoundKey(
        name: "Alert_ActivityGoalBehind_Salient_Haptic",
        ids: [1516]
    )

    // Alert_PassbookGeofence_Salient_Haptic
    public static let alertPassbookGeofenceSalientHaptic = SystemSoundKey(
        name: "Alert_PassbookGeofence_Salient_Haptic",
        ids: [1517]
    )

    // WorkoutSaved_Haptic
    public static let workoutSavedHaptic = SystemSoundKey(
        name: "WorkoutSaved_Haptic",
        ids: [1518]
    )

    // VoiceOver_Click_Haptic
    public static let voiceOverClickHaptic = SystemSoundKey(
        name: "VoiceOver_Click_Haptic",
        ids: [1522]
    )

    // SiriAutoSend_Haptic
    public static let siriAutoSendHaptic = SystemSoundKey(
        name: "SiriAutoSend_Haptic",
        ids: [1523]
    )

    // HummingbirdCompletion_Haptic
    public static let hummingbirdCompletionHaptic = SystemSoundKey(
        name: "HummingbirdCompletion_Haptic",
        ids: [1525]
    )

    // HummingbirdNotification_Haptic
    public static let hummingbirdNotificationHaptic = SystemSoundKey(
        name: "HummingbirdNotification_Haptic",
        ids: [1526]
    )

    // RemoteCameraShutterBurstBegin_Haptic
    public static let remoteCameraShutterBurstBeginHaptic = SystemSoundKey(
        name: "RemoteCameraShutterBurstBegin_Haptic",
        ids: [1527]
    )

    // RemoteCameraShutterBurstEnd_Haptic
    public static let remoteCameraShutterBurstEndHaptic = SystemSoundKey(
        name: "RemoteCameraShutterBurstEnd_Haptic",
        ids: [1528]
    )

    // WorkoutPaused_Haptic
    public static let workoutPausedHaptic = SystemSoundKey(
        name: "WorkoutPaused_Haptic",
        ids: [1529]
    )

    // WorkoutResumed_Haptic
    public static let workoutResumedHaptic = SystemSoundKey(
        name: "WorkoutResumed_Haptic",
        ids: [1530]
    )

    // GoToSleep_Haptic
    public static let goToSleepHaptic = SystemSoundKey(
        name: "GoToSleep_Haptic",
        ids: [1531]
    )

    // Warsaw_Haptic
    public static let warsawHaptic = SystemSoundKey(
        name: "Warsaw_Haptic",
        ids: [1532]
    )

    // AutoUnlock_Haptic
    public static let autoUnlockHaptic = SystemSoundKey(
        name: "AutoUnlock_Haptic",
        ids: [1533]
    )

    // Alert_ActivityFriendsGoalAttained_Haptic
    public static let alertActivityFriendsGoalAttainedHaptic = SystemSoundKey(
        name: "Alert_ActivityFriendsGoalAttained_Haptic",
        ids: [1534]
    )

    // Alert_SpartanConnecting_Haptic
    public static let alertSpartanConnectingHaptic = SystemSoundKey(
        name: "Alert_SpartanConnecting_Haptic",
        ids: [1535]
    )

    // Alert_SpartanConnecting_LowLatency_Haptic
    public static let alertSpartanConnectingLowLatencyHaptic = SystemSoundKey(
        name: "Alert_SpartanConnecting_LowLatency_Haptic",
        ids: [1536]
    )

    // Alert_SpartanConnected_LowLatency_Haptic
    public static let alertSpartanConnectedLowLatencyHaptic = SystemSoundKey(
        name: "Alert_SpartanConnected_LowLatency_Haptic",
        ids: [1537]
    )

    // Alert_SpartanDisconnected_LowLatency_Haptic
    public static let alertSpartanDisconnectedLowLatencyHaptic = SystemSoundKey(
        name: "Alert_SpartanDisconnected_LowLatency_Haptic",
        ids: [1538]
    )

    // AccessScanComplete_Haptic
    public static let accessScanCompleteHaptic = SystemSoundKey(
        name: "AccessScanComplete_Haptic",
        ids: [1543]
    )

    // BuddyMigrationStart_Haptic
    public static let buddyMigrationStartHaptic = SystemSoundKey(
        name: "BuddyMigrationStart_Haptic",
        ids: [1544]
    )

    // SOSFallDetectionPrompt_Haptic
    public static let sOSFallDetectionPromptHaptic = SystemSoundKey(
        name: "SOSFallDetectionPrompt_Haptic",
        ids: [1545]
    )

    // SOSEmergencyContactTextPrompt_Haptic
    public static let sOSEmergencyContactTextPromptHaptic = SystemSoundKey(
        name: "SOSEmergencyContactTextPrompt_Haptic",
        ids: [1546]
    )

    // WorkoutStartAutodetect
    public static let workoutStartAutodetect = SystemSoundKey(
        name: "WorkoutStartAutodetect",
        ids: [1547]
    )

    // WorkoutCompleteAutodetect
    public static let workoutCompleteAutodetect = SystemSoundKey(
        name: "WorkoutCompleteAutodetect",
        ids: [1548]
    )

    // WorkoutPausedAutoDetect
    public static let workoutPausedAutoDetect = SystemSoundKey(
        name: "WorkoutPausedAutoDetect",
        ids: [1549]
    )

    // WorkoutResumedAutoDetect
    public static let workoutResumedAutoDetect = SystemSoundKey(
        name: "WorkoutResumedAutoDetect",
        ids: [1550]
    )

    // WorkoutPaceAbove
    public static let workoutPaceAbove = SystemSoundKey(
        name: "WorkoutPaceAbove",
        ids: [1551]
    )

    // WorkoutPaceBelow
    public static let workoutPaceBelow = SystemSoundKey(
        name: "WorkoutPaceBelow",
        ids: [1552]
    )

    // WalkieTalkieReceiveStart_Haptic
    public static let walkieTalkieReceiveStartHaptic = SystemSoundKey(
        name: "WalkieTalkieReceiveStart_Haptic",
        ids: [1553]
    )

    // WalkieTalkieReceiveEnd_Haptic
    public static let walkieTalkieReceiveEndHaptic = SystemSoundKey(
        name: "WalkieTalkieReceiveEnd_Haptic",
        ids: [1554]
    )

    // Alert_Health_Haptic
    public static let alertHealthHaptic = SystemSoundKey(
        name: "Alert_Health_Haptic",
        ids: [1555]
    )

    // MultiwayInvitation
    public static let multiwayInvitation = SystemSoundKey(
        name: "MultiwayInvitation",
        ids: [1558]
    )

    // 3rd_Party_Critical_Haptic
    public static let _3rdPartyCriticalHaptic = SystemSoundKey(
        name: "3rd_Party_Critical_Haptic",
        ids: [1559]
    )

    // Alert_1stParty_Haptic
    public static let alert1stPartyHaptic = SystemSoundKey(
        name: "Alert_1stParty_Haptic",
        ids: [1560]
    )

    // Siren_Countdown_Major_Haptic
    public static let sirenCountdownMajorHaptic = SystemSoundKey(
        name: "Siren_Countdown_Major_Haptic",
        ids: [1563]
    )

    // Siren_Countdown_Minor_Haptic
    public static let sirenCountdownMinorHaptic = SystemSoundKey(
        name: "Siren_Countdown_Minor_Haptic",
        ids: [1564]
    )

    // Doorbell_Haptic
    public static let doorbellHaptic = SystemSoundKey(
        name: "Doorbell_Haptic",
        ids: [1566]
    )

    // System_Notification_Haptic
    public static let systemNotificationHaptic = SystemSoundKey(
        name: "System_Notification_Haptic",
        ids: [1567]
    )

    // SOSFallDetectionPromptEscalation_Haptic
    public static let sOSFallDetectionPromptEscalationHaptic = SystemSoundKey(
        name: "SOSFallDetectionPromptEscalation_Haptic",
        ids: [1568]
    )

    // HealthReadingComplete_Haptic
    public static let healthReadingCompleteHaptic = SystemSoundKey(
        name: "HealthReadingComplete_Haptic",
        ids: [1570]
    )

    // HealthReadingFail_Haptic
    public static let healthReadingFailHaptic = SystemSoundKey(
        name: "HealthReadingFail_Haptic",
        ids: [1571]
    )

    // WorkoutPrecisionStart_Haptic
    @available(iOS 17.0, *)
    public static let workoutPrecisionStartHaptic = SystemSoundKey(
        name: "WorkoutPrecisionStart_Haptic",
        ids: [1581]
    )

    // IntervalEnded
    public static let intervalEnded = SystemSoundKey(
        name: "IntervalEnded",
        ids: [1582]
    )

    // IntervalUpcoming
    public static let intervalUpcoming = SystemSoundKey(
        name: "IntervalUpcoming",
        ids: [1583]
    )

}
extension SystemSoundKey {
    public static var allCases: [SystemSoundKey] {
        var cases = [
            ringbackToneAnsi,
            ringbackToneCept,
            busyToneAnsi,
            busyToneCept,
            callWaitingToneAnsi,
            callWaitingToneCept,
            endCallToneCept,
            ringbackToneHk,
            ringbackToneAus,
            ringbackToneUk,
            newMail,
            mailSent,
            smsReceived1,
            receivedMessage,
            sentMessage,
            alarm,
            lowPower,
            smsReceived2,
            smsReceived3,
            smsReceived4,
            smsReceived5,
            smsReceived6,
            tweetSent,
            swish,
            anticipate,
            bloom,
            calypso,
            chooChoo,
            descent,
            fanfare,
            ladder,
            minuet,
            newsFlash,
            noir,
            sherwoodForest,
            spell,
            suspense,
            telegraph,
            tiptoes,
            typewriters,
            update,
            ussd,
            sIMToolkitCallDropped,
            sIMToolkitGeneralBeep,
            sIMToolkitNegativeACK,
            sIMToolkitPositiveACK,
            sIMToolkitSMS,
            tink,
            webcamStart,
            ctBusy,
            ctCongestion,
            ctPathAck,
            ctError,
            ctCallWaiting,
            ctKeytone2,
            lock,
            keyPressClick,
            tock,
            connectPower,
            ringerChanged,
            photoShutter,
            shake,
            jblBegin,
            jblConfirm,
            jblCancel,
            beginRecord,
            endRecord,
            jblAmbiguous,
            jblNoMatch,
            cameraShutterBurst,
            cameraShutterBurstBegin,
            cameraShutterBurstEnd,
            focusChangeKeyboard,
            focusChangeAppIcon,
            focusChangeLarge,
            focusChangeSmall,
            navigationPush,
            navigationPop,
            keyboardPressNormal,
            keyboardPressDelete,
            keyboardPressClear,
            vcInvitationAccepted,
            vcRinging,
            vcEnded,
            keyPressDelete,
            keyPressModifier,
            wheelsOfTime,
            goToSleepAlert,
            warsaw,
            nfcScanComplete,
            accessScanComplete,
            _3rdPartyCritical,
            paymentReceived,
            doorbell,
            paymentReceivedFailure,
            dtmf0,
            dtmf1,
            dtmf2,
            dtmf3,
            dtmf4,
            dtmf5,
            dtmf6,
            dtmf7,
            dtmf8,
            dtmf9,
            dtmfStar,
            dtmfPound,
            deviceShutdown,
            longLowShortHigh,
            shortDoubleHigh,
            shortLowHigh,
            shortDoubleLow,
            middle9ShortDoubleLow,
            cameraTimerFinalSecond,
            cameraTimerCountdown,
            healthNotification,
            multiwayJoin,
            multiwayLeave,
            multiway_invitation,
            pushToTalkJoined,
            pushToTalkLeft,
            pushToTalkUnmute,
            pushToTalkMute,
            pushToTalkUnmuteFail,
            pINEnterDigitAX,
            pINDeleteAX,
            pINSubmitAX,
            pINUnexpected,
            pINEnterDigit,
            pINDelete,
            headphoneAudioExposureLimitExceeded,
            healthNotificationUrgent,
            micMute,
            micUnmute,
            micUnmuteFail,
            screenSharingStarted,
            mediaPaused,
            mediaHandoff,
            navigationGenericManeuver,
            screenCapture,
            paymentSuccess,
            paymentFailure,
            acknowledgmentSent,
            acknowledgmentReceived,
            nfcScanFailure,
            notificationHaptic,
            ringtoneUSHaptic,
            ringtoneUKHaptic,
            alarmHaptic,
            siriStartHaptic,
            siriStopSuccessHaptic,
            siriStopFailureHaptic,
            stockholmHaptic,
            beatHaptic,
            doNotDisturbHaptic,
            timerHaptic,
            navigationLeftTurnHaptic,
            navigationRightTurnHaptic,
            detentHaptic,
            navigationGenericManeuverHaptic,
            cameraCountdownTickHaptic,
            cameraCountdownImminentHaptic,
            eTRemoteTapReceiveHaptic,
            eTRemoteTapSendHaptic,
            eTBeginNotificationHaptic,
            stockholmActiveHaptic,
            stockholmActiveSingleCycleHaptic,
            stockholmFailureHaptic,
            sedentaryTimerHaptic,
            hourlyChimeHaptic,
            previewAudioAndHaptic,
            alertActivityGoalAttainedHaptic,
            alertActivityGoalBehindHaptic,
            alertActivityGoalCloseHaptic,
            alertBatteryLow10pHaptic,
            alertBatteryLow5pHaptic,
            alertCalendarHaptic,
            alertPassbookBalanceHaptic,
            alertPassbookGeofenceHaptic,
            alertPhotostreamActivityHaptic,
            alertReminderDueHaptic,
            alertWalkieTalkieHaptic,
            batteryMagsafeHaptic,
            buddyPairingFailureHaptic,
            buddyPairingSuccessHaptic,
            cameraShutterHaptic,
            alertMapsDirectionsInAppHaptic,
            messagesIncomingHaptic,
            messagesOutgoingHaptic,
            onOffPasscodeFailureHaptic,
            orbLayersHaptic,
            phoneHangUpHaptic,
            photosZoomDetentHaptic,
            qBDictationHaptic,
            stopwatchLapHaptic,
            stopwatchResetHaptic,
            stopwatchStartHaptic,
            stopwatchStopHaptic,
            timerCancelHaptic,
            timerPauseHaptic,
            timerStartHaptic,
            timerWheelHoursDetentHaptic,
            walkieTalkieActiveStartHaptic,
            workoutCompleteHaptic,
            workoutCountdownHaptic,
            alert3rdPartyHaptic,
            workoutSelectHaptic,
            workoutPressStartHaptic,
            timerWheelMinutesDetentHaptic,
            phoneAnswerHaptic,
            phoneHoldHaptic,
            walkieTalkieActiveEndHaptic,
            uISwitchOnHaptic,
            uISwitchOffHaptic,
            uISwipeHaptic,
            systemStartupHaptic,
            buddyPairingRemoteConnectionHaptic,
            buddyPairingRemoteTapHaptic,
            qBDictationOffHaptic,
            ringtoneDuckedUSHaptic,
            ringtoneDuckedUKHaptic,
            salientNotificationHaptic,
            notificationSalientHaptic,
            eTBeginNotificationSalientHaptic,
            alertCalendarSalientHaptic,
            alertReminderDueSalientHaptic,
            alert3rdPartySalientHaptic,
            _3rdPartyDirectionUpHaptic,
            _3rdPartyDirectionDownHaptic,
            _3rdPartySuccessHaptic,
            _3rdPartyFailureHaptic,
            _3rdPartyRetryHaptic,
            _3rdPartyStartHaptic,
            _3rdPartyStopHaptic,
            alarmNightstandHaptic,
            alertBatteryLow5pSalientHaptic,
            navigationLeftTurnSalientHaptic,
            navigationRightTurnSalientHaptic,
            navigationGenericManeuverSalientHaptic,
            sedentaryTimerSalientHaptic,
            alertActivityGoalAttainedSalientHaptic,
            alertActivityGoalBehindSalientHaptic,
            alertPassbookGeofenceSalientHaptic,
            workoutSavedHaptic,
            voiceOverClickHaptic,
            siriAutoSendHaptic,
            hummingbirdCompletionHaptic,
            hummingbirdNotificationHaptic,
            remoteCameraShutterBurstBeginHaptic,
            remoteCameraShutterBurstEndHaptic,
            workoutPausedHaptic,
            workoutResumedHaptic,
            goToSleepHaptic,
            warsawHaptic,
            autoUnlockHaptic,
            alertActivityFriendsGoalAttainedHaptic,
            alertSpartanConnectingHaptic,
            alertSpartanConnectingLowLatencyHaptic,
            alertSpartanConnectedLowLatencyHaptic,
            alertSpartanDisconnectedLowLatencyHaptic,
            accessScanCompleteHaptic,
            buddyMigrationStartHaptic,
            sOSFallDetectionPromptHaptic,
            sOSEmergencyContactTextPromptHaptic,
            workoutStartAutodetect,
            workoutCompleteAutodetect,
            workoutPausedAutoDetect,
            workoutResumedAutoDetect,
            workoutPaceAbove,
            workoutPaceBelow,
            walkieTalkieReceiveStartHaptic,
            walkieTalkieReceiveEndHaptic,
            alertHealthHaptic,
            multiwayInvitation,
            _3rdPartyCriticalHaptic,
            alert1stPartyHaptic,
            sirenCountdownMajorHaptic,
            sirenCountdownMinorHaptic,
            doorbellHaptic,
            systemNotificationHaptic,
            sOSFallDetectionPromptEscalationHaptic,
            healthReadingCompleteHaptic,
            healthReadingFailHaptic,
            intervalEnded,
            intervalUpcoming
        ]

        if #available(iOS 17.0, *) {
            cases.append(contentsOf: iOS17Cases)
        }

        return cases.sorted { lhs, rhs in
            lhs.systemSoundId < rhs.systemSoundId
        }
    }
}

extension SystemSoundKey {
    @available(iOS 17.0, *)
    static var iOS17Cases: [SystemSoundKey] {
        [
            airdropInvite,
            senderConfirmation,
            receiverConfirmation,
            receiverConnect,
            workoutPrecisionStartHaptic,
        ]
    }
}
