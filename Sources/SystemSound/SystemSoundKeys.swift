public enum SystemSoundKey: Int, CaseIterable {
    // ringback_tone_ansi
    case ringbackToneAnsi = 30

    // ringback_tone_cept
    case ringbackToneCept = 31

    // busy_tone_ansi
    case busyToneAnsi = 32

    // busy_tone_cept
    case busyToneCept = 33

    // call_waiting_tone_ansi
    case callWaitingToneAnsi = 34

    // call_waiting_tone_cept
    case callWaitingToneCept = 35

    // end_call_tone_cept
    case endCallToneCept = 36

    // ringback_tone_hk
    case ringbackToneHk = 37

    // ringback_tone_aus
    case ringbackToneAus = 38

    // ringback_tone_uk
    case ringbackToneUk = 39

    // new-mail
    case newMail = 1000

    // mail-sent
    case mailSent = 1001

    // sms-received1
    case smsReceived1 = 1002

    // ReceivedMessage
    case receivedMessage = 1003

    // SentMessage
    case sentMessage = 1004

    // alarm
    case alarm = 1005

    // low_power
    case lowPower = 1006

    // sms-received2
    case smsReceived2 = 1008

    // sms-received3
    case smsReceived3 = 1009

    // sms-received4
    case smsReceived4 = 1010

    // sms-received5
    case smsReceived5 = 1013

    // sms-received6
    case smsReceived6 = 1014

    // tweet_sent
    case tweetSent = 1016

    // Swish
    case swish = 1018

    // Anticipate
    case anticipate = 1020

    // Bloom
    case bloom = 1021

    // Calypso
    case calypso = 1022

    // Choo_Choo
    case chooChoo = 1023

    // Descent
    case descent = 1024

    // Fanfare
    case fanfare = 1025

    // Ladder
    case ladder = 1026

    // Minuet
    case minuet = 1027

    // News_Flash
    case newsFlash = 1028

    // Noir
    case noir = 1029

    // Sherwood_Forest
    case sherwoodForest = 1030

    // Spell
    case spell = 1031

    // Suspense
    case suspense = 1032

    // Telegraph
    case telegraph = 1033

    // Tiptoes
    case tiptoes = 1034

    // Typewriters
    case typewriters = 1035

    // Update
    case update = 1036

    // ussd
    case ussd = 1050

    // SIMToolkitCallDropped
    case sIMToolkitCallDropped = 1051

    // SIMToolkitGeneralBeep
    case sIMToolkitGeneralBeep = 1052

    // SIMToolkitNegativeACK
    case sIMToolkitNegativeACK = 1053

    // SIMToolkitPositiveACK
    case sIMToolkitPositiveACK = 1054

    // SIMToolkitSMS
    case sIMToolkitSMS = 1055

    // Tink
    case tink = 1057

    // WebcamStart
    case webcamStart = 1060

    // ct-busy
    case ctBusy = 1070

    // ct-congestion
    case ctCongestion = 1071

    // ct-path-ack
    case ctPathAck = 1072

    // ct-error
    case ctError = 1073

    // ct-call-waiting
    case ctCallWaiting = 1074

    // ct-keytone2
    case ctKeytone2 = 1075

    // lock
    case lock = 1100

    // key_press_click
    case keyPressClick = 1104

    // Tock
    case tock = 1105

    // connect_power
    case connectPower = 1106

    // RingerChanged
    case ringerChanged = 1107

    // photoShutter
    case photoShutter = 1108

    // shake
    case shake = 1109

    // jbl_begin
    case jblBegin = 1110

    // jbl_confirm
    case jblConfirm = 1111

    // jbl_cancel
    case jblCancel = 1112

    // begin_record
    case beginRecord = 1113

    // end_record
    case endRecord = 1114

    // jbl_ambiguous
    case jblAmbiguous = 1115

    // jbl_no_match
    case jblNoMatch = 1116

    // camera_shutter_burst
    case cameraShutterBurst = 1119

    // camera_shutter_burst_begin
    case cameraShutterBurstBegin = 1121

    // camera_shutter_burst_end
    case cameraShutterBurstEnd = 1122

    // focus_change_keyboard
    case focusChangeKeyboard = 1124

    // focus_change_app_icon
    case focusChangeAppIcon = 1125

    // focus_change_large
    case focusChangeLarge = 1126

    // focus_change_small
    case focusChangeSmall = 1127

    // navigation_push
    case navigationPush = 1128

    // navigation_pop
    case navigationPop = 1129

    // keyboard_press_normal
    case keyboardPressNormal = 1130

    // keyboard_press_delete
    case keyboardPressDelete = 1131

    // keyboard_press_clear
    case keyboardPressClear = 1132

    // vc~invitation-accepted
    case vcInvitationAccepted = 1150

    // vc~ringing
    case vcRinging = 1151

    // vc~ended
    case vcEnded = 1152

    // key_press_delete
    case keyPressDelete = 1155

    // key_press_modifier
    case keyPressModifier = 1156

    // wheels_of_time
    case wheelsOfTime = 1157

    // go_to_sleep_alert
    case goToSleepAlert = 1158

    // warsaw
    case warsaw = 1159

    // nfc_scan_complete
    case nfcScanComplete = 1160

    // access_scan_complete
    case accessScanComplete = 1163

    // 3rd_party_critical
    case _3rdPartyCritical = 1165

    // PaymentReceived
    case paymentReceived = 1166

    // Doorbell
    case doorbell = 1167

    // PaymentReceivedFailure
    case paymentReceivedFailure = 1168

    // dtmf-0
    case dtmf0 = 1200

    // dtmf-1
    case dtmf1 = 1201

    // dtmf-2
    case dtmf2 = 1202

    // dtmf-3
    case dtmf3 = 1203

    // dtmf-4
    case dtmf4 = 1204

    // dtmf-5
    case dtmf5 = 1205

    // dtmf-6
    case dtmf6 = 1206

    // dtmf-7
    case dtmf7 = 1207

    // dtmf-8
    case dtmf8 = 1208

    // dtmf-9
    case dtmf9 = 1209

    // dtmf-star
    case dtmfStar = 1210

    // dtmf-pound
    case dtmfPound = 1211

    // DeviceShutdown
    case deviceShutdown = 1253

    // long_low_short_high
    case longLowShortHigh = 1254

    // short_double_high
    case shortDoubleHigh = 1255

    // short_low_high
    case shortLowHigh = 1256

    // short_double_low
    case shortDoubleLow = 1257

    // middle_9_short_double_low
    case middle9ShortDoubleLow = 1259

    // camera_timer_final_second
    case cameraTimerFinalSecond = 1260

    // camera_timer_countdown
    case cameraTimerCountdown = 1261

    // health_notification
    case healthNotification = 1262

    // MultiwayJoin
    case multiwayJoin = 1263

    // MultiwayLeave
    case multiwayLeave = 1264

    // multiway_invitation
    case multiway_invitation = 1265

    // PushToTalkJoined
    case pushToTalkJoined = 1270

    // PushToTalkLeft
    case pushToTalkLeft = 1271

    // PushToTalkUnmute
    case pushToTalkUnmute = 1272

    // PushToTalkMute
    case pushToTalkMute = 1273

    // PushToTalkUnmuteFail
    case pushToTalkUnmuteFail = 1274

    // PINEnterDigit_AX
    case pINEnterDigitAX = 1340

    // PINDelete_AX
    case pINDeleteAX = 1341

    // PINSubmit_AX
    case pINSubmitAX = 1342

    // PINUnexpected
    case pINUnexpected = 1343

    // PINEnterDigit
    case pINEnterDigit = 1344

    // PINDelete
    case pINDelete = 1345

    // HeadphoneAudioExposureLimitExceeded
    case headphoneAudioExposureLimitExceeded = 1362

    // HealthNotificationUrgent
    case healthNotificationUrgent = 1363

    // MicMute
    case micMute = 1364

    // MicUnmute
    case micUnmute = 1365

    // MicUnmuteFail
    case micUnmuteFail = 1366

    // ScreenSharingStarted
    case screenSharingStarted = 1367

    // MediaPaused
    case mediaPaused = 1368

    // MediaHandoff
    case mediaHandoff = 1369

    // NavigationGenericManeuver
    case navigationGenericManeuver = 1370

    // ScreenCapture
    case screenCapture = 1393

    // payment_success
    case paymentSuccess = 1394

    // payment_failure
    case paymentFailure = 1395

    // acknowledgment_sent
    case acknowledgmentSent = 1396

    // acknowledgment_received
    case acknowledgmentReceived = 1397

    // nfc_scan_failure
    case nfcScanFailure = 1398

    // Notification_Haptic
    case notificationHaptic = 1400

    // Ringtone_US_Haptic
    case ringtoneUSHaptic = 1401

    // Ringtone_UK_Haptic
    case ringtoneUKHaptic = 1402

    // Alarm_Haptic
    case alarmHaptic = 1403

    // SiriStart_Haptic
    case siriStartHaptic = 1404

    // SiriStopSuccess_Haptic
    case siriStopSuccessHaptic = 1405

    // SiriStopFailure_Haptic
    case siriStopFailureHaptic = 1406

    // Stockholm_Haptic
    case stockholmHaptic = 1407

    // Beat_Haptic
    case beatHaptic = 1408

    // DoNotDisturb_Haptic
    case doNotDisturbHaptic = 1410

    // Timer_Haptic
    case timerHaptic = 1413

    // NavigationLeftTurn_Haptic
    case navigationLeftTurnHaptic = 1414

    // NavigationRightTurn_Haptic
    case navigationRightTurnHaptic = 1415

    // Detent_Haptic
    case detentHaptic = 1416

    // NavigationGenericManeuver_Haptic
    case navigationGenericManeuverHaptic = 1417

    // CameraCountdownTick_Haptic
    case cameraCountdownTickHaptic = 1418

    // CameraCountdownImminent_Haptic
    case cameraCountdownImminentHaptic = 1419

    // ET_RemoteTap_Receive_Haptic
    case eTRemoteTapReceiveHaptic = 1420

    // ET_RemoteTap_Send_Haptic
    case eTRemoteTapSendHaptic = 1421

    // ET_BeginNotification_Haptic
    case eTBeginNotificationHaptic = 1422

    // StockholmActive_Haptic
    case stockholmActiveHaptic = 1424

    // StockholmActiveSingleCycle_Haptic
    case stockholmActiveSingleCycleHaptic = 1425

    // StockholmFailure_Haptic
    case stockholmFailureHaptic = 1426

    // SedentaryTimer_Haptic
    case sedentaryTimerHaptic = 1427

    // HourlyChime_Haptic
    case hourlyChimeHaptic = 1428

    // Preview_AudioAndHaptic
    case previewAudioAndHaptic = 1429

    // Alert_ActivityGoalAttained_Haptic
    case alertActivityGoalAttainedHaptic = 1430

    // Alert_ActivityGoalBehind_Haptic
    case alertActivityGoalBehindHaptic = 1431

    // Alert_ActivityGoalClose_Haptic
    case alertActivityGoalCloseHaptic = 1432

    // Alert_BatteryLow_10p_Haptic
    case alertBatteryLow10pHaptic = 1433

    // Alert_BatteryLow_5p_Haptic
    case alertBatteryLow5pHaptic = 1434

    // Alert_Calendar_Haptic
    case alertCalendarHaptic = 1435

    // Alert_PassbookBalance_Haptic
    case alertPassbookBalanceHaptic = 1440

    // Alert_PassbookGeofence_Haptic
    case alertPassbookGeofenceHaptic = 1441

    // Alert_PhotostreamActivity_Haptic
    case alertPhotostreamActivityHaptic = 1442

    // Alert_ReminderDue_Haptic
    case alertReminderDueHaptic = 1443

    // Alert_WalkieTalkie_Haptic
    case alertWalkieTalkieHaptic = 1445

    // BatteryMagsafe_Haptic
    case batteryMagsafeHaptic = 1446

    // BuddyPairingFailure_Haptic
    case buddyPairingFailureHaptic = 1447

    // BuddyPairingSuccess_Haptic
    case buddyPairingSuccessHaptic = 1448

    // CameraShutter_Haptic
    case cameraShutterHaptic = 1449

    // Alert_MapsDirectionsInApp_Haptic
    case alertMapsDirectionsInAppHaptic = 1450

    // MessagesIncoming_Haptic
    case messagesIncomingHaptic = 1451

    // MessagesOutgoing_Haptic
    case messagesOutgoingHaptic = 1452

    // OnOffPasscodeFailure_Haptic
    case onOffPasscodeFailureHaptic = 1453

    // OrbLayers_Haptic
    case orbLayersHaptic = 1458

    // PhoneHangUp_Haptic
    case phoneHangUpHaptic = 1459

    // PhotosZoomDetent_Haptic
    case photosZoomDetentHaptic = 1460

    // QB_Dictation_Haptic
    case qBDictationHaptic = 1461

    // StopwatchLap_Haptic
    case stopwatchLapHaptic = 1464

    // StopwatchReset_Haptic
    case stopwatchResetHaptic = 1465

    // StopwatchStart_Haptic
    case stopwatchStartHaptic = 1466

    // StopwatchStop_Haptic
    case stopwatchStopHaptic = 1467

    // TimerCancel_Haptic
    case timerCancelHaptic = 1468

    // TimerPause_Haptic
    case timerPauseHaptic = 1469

    // TimerStart_Haptic
    case timerStartHaptic = 1470

    // TimerWheelHoursDetent_Haptic
    case timerWheelHoursDetentHaptic = 1471

    // WalkieTalkieActiveStart_Haptic
    case walkieTalkieActiveStartHaptic = 1472

    // WorkoutComplete_Haptic
    case workoutCompleteHaptic = 1473

    // WorkoutCountdown_Haptic
    case workoutCountdownHaptic = 1474

    // Alert_3rdParty_Haptic
    case alert3rdPartyHaptic = 1475

    // WorkoutSelect_Haptic
    case workoutSelectHaptic = 1476

    // WorkoutPressStart_Haptic
    case workoutPressStartHaptic = 1477

    // TimerWheelMinutesDetent_Haptic
    case timerWheelMinutesDetentHaptic = 1479

    // PhoneAnswer_Haptic
    case phoneAnswerHaptic = 1480

    // PhoneHold_Haptic
    case phoneHoldHaptic = 1481

    // WalkieTalkieActiveEnd_Haptic
    case walkieTalkieActiveEndHaptic = 1482

    // UISwitch_On_Haptic
    case uISwitchOnHaptic = 1484

    // UISwitch_Off_Haptic
    case uISwitchOffHaptic = 1485

    // UISwipe_Haptic
    case uISwipeHaptic = 1486

    // SystemStartup_Haptic
    case systemStartupHaptic = 1487

    // BuddyPairingRemoteConnection_Haptic
    case buddyPairingRemoteConnectionHaptic = 1488

    // BuddyPairingRemoteTap_Haptic
    case buddyPairingRemoteTapHaptic = 1489

    // QB_Dictation_Off_Haptic
    case qBDictationOffHaptic = 1490

    // RingtoneDucked_US_Haptic
    case ringtoneDuckedUSHaptic = 1491

    // RingtoneDucked_UK_Haptic
    case ringtoneDuckedUKHaptic = 1492

    // SalientNotification_Haptic
    case salientNotificationHaptic = 1493

    // Notification_Salient_Haptic
    case notificationSalientHaptic = 1494

    // ET_BeginNotification_Salient_Haptic
    case eTBeginNotificationSalientHaptic = 1495

    // Alert_Calendar_Salient_Haptic
    case alertCalendarSalientHaptic = 1496

    // Alert_ReminderDue_Salient_Haptic
    case alertReminderDueSalientHaptic = 1499

    // Alert_3rdParty_Salient_Haptic
    case alert3rdPartySalientHaptic = 1501

    // 3rdParty_DirectionUp_Haptic
    case _3rdPartyDirectionUpHaptic = 1502

    // 3rdParty_DirectionDown_Haptic
    case _3rdPartyDirectionDownHaptic = 1503

    // 3rdParty_Success_Haptic
    case _3rdPartySuccessHaptic = 1504

    // 3rdParty_Failure_Haptic
    case _3rdPartyFailureHaptic = 1505

    // 3rdParty_Retry_Haptic
    case _3rdPartyRetryHaptic = 1506

    // 3rdParty_Start_Haptic
    case _3rdPartyStartHaptic = 1507

    // 3rdParty_Stop_Haptic
    case _3rdPartyStopHaptic = 1508

    // Alarm_Nightstand_Haptic
    case alarmNightstandHaptic = 1509

    // Alert_BatteryLow_5p_Salient_Haptic
    case alertBatteryLow5pSalientHaptic = 1510

    // NavigationLeftTurn_Salient_Haptic
    case navigationLeftTurnSalientHaptic = 1511

    // NavigationRightTurn_Salient_Haptic
    case navigationRightTurnSalientHaptic = 1512

    // NavigationGenericManeuver_Salient_Haptic
    case navigationGenericManeuverSalientHaptic = 1513

    // SedentaryTimer_Salient_Haptic
    case sedentaryTimerSalientHaptic = 1514

    // Alert_ActivityGoalAttained_Salient_Haptic
    case alertActivityGoalAttainedSalientHaptic = 1515

    // Alert_ActivityGoalBehind_Salient_Haptic
    case alertActivityGoalBehindSalientHaptic = 1516

    // Alert_PassbookGeofence_Salient_Haptic
    case alertPassbookGeofenceSalientHaptic = 1517

    // WorkoutSaved_Haptic
    case workoutSavedHaptic = 1518

    // VoiceOver_Click_Haptic
    case voiceOverClickHaptic = 1522

    // SiriAutoSend_Haptic
    case siriAutoSendHaptic = 1523

    // HummingbirdCompletion_Haptic
    case hummingbirdCompletionHaptic = 1525

    // HummingbirdNotification_Haptic
    case hummingbirdNotificationHaptic = 1526

    // RemoteCameraShutterBurstBegin_Haptic
    case remoteCameraShutterBurstBeginHaptic = 1527

    // RemoteCameraShutterBurstEnd_Haptic
    case remoteCameraShutterBurstEndHaptic = 1528

    // WorkoutPaused_Haptic
    case workoutPausedHaptic = 1529

    // WorkoutResumed_Haptic
    case workoutResumedHaptic = 1530

    // GoToSleep_Haptic
    case goToSleepHaptic = 1531

    // Warsaw_Haptic
    case warsawHaptic = 1532

    // AutoUnlock_Haptic
    case autoUnlockHaptic = 1533

    // Alert_ActivityFriendsGoalAttained_Haptic
    case alertActivityFriendsGoalAttainedHaptic = 1534

    // Alert_SpartanConnecting_Haptic
    case alertSpartanConnectingHaptic = 1535

    // Alert_SpartanConnecting_LowLatency_Haptic
    case alertSpartanConnectingLowLatencyHaptic = 1536

    // Alert_SpartanConnected_LowLatency_Haptic
    case alertSpartanConnectedLowLatencyHaptic = 1537

    // Alert_SpartanDisconnected_LowLatency_Haptic
    case alertSpartanDisconnectedLowLatencyHaptic = 1538

    // AccessScanComplete_Haptic
    case accessScanCompleteHaptic = 1543

    // BuddyMigrationStart_Haptic
    case buddyMigrationStartHaptic = 1544

    // SOSFallDetectionPrompt_Haptic
    case sOSFallDetectionPromptHaptic = 1545

    // SOSEmergencyContactTextPrompt_Haptic
    case sOSEmergencyContactTextPromptHaptic = 1546

    // WorkoutStartAutodetect
    case workoutStartAutodetect = 1547

    // WorkoutCompleteAutodetect
    case workoutCompleteAutodetect = 1548

    // WorkoutPausedAutoDetect
    case workoutPausedAutoDetect = 1549

    // WorkoutResumedAutoDetect
    case workoutResumedAutoDetect = 1550

    // WorkoutPaceAbove
    case workoutPaceAbove = 1551

    // WorkoutPaceBelow
    case workoutPaceBelow = 1552

    // WalkieTalkieReceiveStart_Haptic
    case walkieTalkieReceiveStartHaptic = 1553

    // WalkieTalkieReceiveEnd_Haptic
    case walkieTalkieReceiveEndHaptic = 1554

    // Alert_Health_Haptic
    case alertHealthHaptic = 1555

    // MultiwayInvitation
    case multiwayInvitation = 1558

    // 3rd_Party_Critical_Haptic
    case _3rdPartyCriticalHaptic = 1559

    // Alert_1stParty_Haptic
    case alert1stPartyHaptic = 1560

    // Siren_Countdown_Major_Haptic
    case sirenCountdownMajorHaptic = 1563

    // Siren_Countdown_Minor_Haptic
    case sirenCountdownMinorHaptic = 1564

    // Doorbell_Haptic
    case doorbellHaptic = 1566

    // System_Notification_Haptic
    case systemNotificationHaptic = 1567

    // SOSFallDetectionPromptEscalation_Haptic
    case sOSFallDetectionPromptEscalationHaptic = 1568

    // HealthReadingComplete_Haptic
    case healthReadingCompleteHaptic = 1570

    // HealthReadingFail_Haptic
    case healthReadingFailHaptic = 1571

    // IntervalEnded
    case intervalEnded = 1582

    // IntervalUpcoming
    case intervalUpcoming = 1583

}
extension SystemSoundKey {
    public var name: String {
        switch rawValue {
        case 30: return "ringback_tone_ansi"
        case 31: return "ringback_tone_cept"
        case 32: return "busy_tone_ansi"
        case 33: return "busy_tone_cept"
        case 34: return "call_waiting_tone_ansi"
        case 35: return "call_waiting_tone_cept"
        case 36: return "end_call_tone_cept"
        case 37: return "ringback_tone_hk"
        case 38: return "ringback_tone_aus"
        case 39: return "ringback_tone_uk"
        case 1000, 1302: return "new-mail"
        case 1001, 1303: return "mail-sent"
        case 1002, 1007, 1012, 1015, 1300, 1307, 1312, 1315: return "sms-received1"
        case 1003, 1301: return "ReceivedMessage"
        case 1004: return "SentMessage"
        case 1005, 1017, 1304, 1317: return "alarm"
        case 1006: return "low_power"
        case 1008, 1308: return "sms-received2"
        case 1009, 1309: return "sms-received3"
        case 1010, 1310: return "sms-received4"
        case 1013, 1313: return "sms-received5"
        case 1014, 1314: return "sms-received6"
        case 1016: return "tweet_sent"
        case 1018, 1318: return "Swish"
        case 1020, 1320: return "Anticipate"
        case 1021, 1321: return "Bloom"
        case 1022, 1322: return "Calypso"
        case 1023, 1323: return "Choo_Choo"
        case 1024, 1324: return "Descent"
        case 1025, 1325: return "Fanfare"
        case 1026, 1326: return "Ladder"
        case 1027, 1327: return "Minuet"
        case 1028, 1328: return "News_Flash"
        case 1029, 1329: return "Noir"
        case 1030, 1330: return "Sherwood_Forest"
        case 1031, 1331: return "Spell"
        case 1032, 1332: return "Suspense"
        case 1033, 1333: return "Telegraph"
        case 1034, 1334: return "Tiptoes"
        case 1035, 1335: return "Typewriters"
        case 1036, 1336: return "Update"
        case 1050: return "ussd"
        case 1051: return "SIMToolkitCallDropped"
        case 1052: return "SIMToolkitGeneralBeep"
        case 1053: return "SIMToolkitNegativeACK"
        case 1054: return "SIMToolkitPositiveACK"
        case 1055: return "SIMToolkitSMS"
        case 1057, 1103: return "Tink"
        case 1060: return "WebcamStart"
        case 1070: return "ct-busy"
        case 1071: return "ct-congestion"
        case 1072: return "ct-path-ack"
        case 1073: return "ct-error"
        case 1074, 1153: return "ct-call-waiting"
        case 1075: return "ct-keytone2"
        case 1100, 1305: return "lock"
        case 1104, 1123, 1306: return "key_press_click"
        case 1105: return "Tock"
        case 1106, 1360, 1361: return "connect_power"
        case 1107: return "RingerChanged"
        case 1108: return "photoShutter"
        case 1109: return "shake"
        case 1110: return "jbl_begin"
        case 1111: return "jbl_confirm"
        case 1112: return "jbl_cancel"
        case 1113, 1117: return "begin_record"
        case 1114, 1118: return "end_record"
        case 1115: return "jbl_ambiguous"
        case 1116: return "jbl_no_match"
        case 1119: return "camera_shutter_burst"
        case 1121: return "camera_shutter_burst_begin"
        case 1122: return "camera_shutter_burst_end"
        case 1124: return "focus_change_keyboard"
        case 1125: return "focus_change_app_icon"
        case 1126: return "focus_change_large"
        case 1127: return "focus_change_small"
        case 1128: return "navigation_push"
        case 1129: return "navigation_pop"
        case 1130: return "keyboard_press_normal"
        case 1131: return "keyboard_press_delete"
        case 1132: return "keyboard_press_clear"
        case 1150: return "vc~invitation-accepted"
        case 1151, 1154: return "vc~ringing"
        case 1152: return "vc~ended"
        case 1155: return "key_press_delete"
        case 1156: return "key_press_modifier"
        case 1157: return "wheels_of_time"
        case 1158: return "go_to_sleep_alert"
        case 1159: return "warsaw"
        case 1160: return "nfc_scan_complete"
        case 1163: return "access_scan_complete"
        case 1165: return "3rd_party_critical"
        case 1166: return "PaymentReceived"
        case 1167: return "Doorbell"
        case 1168: return "PaymentReceivedFailure"
        case 1200: return "dtmf-0"
        case 1201: return "dtmf-1"
        case 1202: return "dtmf-2"
        case 1203: return "dtmf-3"
        case 1204: return "dtmf-4"
        case 1205: return "dtmf-5"
        case 1206: return "dtmf-6"
        case 1207: return "dtmf-7"
        case 1208: return "dtmf-8"
        case 1209: return "dtmf-9"
        case 1210: return "dtmf-star"
        case 1211: return "dtmf-pound"
        case 1253: return "DeviceShutdown"
        case 1254: return "long_low_short_high"
        case 1255: return "short_double_high"
        case 1256: return "short_low_high"
        case 1257, 1258: return "short_double_low"
        case 1259: return "middle_9_short_double_low"
        case 1260: return "camera_timer_final_second"
        case 1261: return "camera_timer_countdown"
        case 1262: return "health_notification"
        case 1263, 1556: return "MultiwayJoin"
        case 1264, 1557: return "MultiwayLeave"
        case 1265: return "multiway_invitation"
        case 1270, 1576: return "PushToTalkJoined"
        case 1271, 1577: return "PushToTalkLeft"
        case 1272, 1578: return "PushToTalkUnmute"
        case 1273, 1579: return "PushToTalkMute"
        case 1274, 1580: return "PushToTalkUnmuteFail"
        case 1340: return "PINEnterDigit_AX"
        case 1341: return "PINDelete_AX"
        case 1342: return "PINSubmit_AX"
        case 1343: return "PINUnexpected"
        case 1344: return "PINEnterDigit"
        case 1345: return "PINDelete"
        case 1362, 1572: return "HeadphoneAudioExposureLimitExceeded"
        case 1363, 1561: return "HealthNotificationUrgent"
        case 1364: return "MicMute"
        case 1365: return "MicUnmute"
        case 1366: return "MicUnmuteFail"
        case 1367: return "ScreenSharingStarted"
        case 1368: return "MediaPaused"
        case 1369: return "MediaHandoff"
        case 1370: return "NavigationGenericManeuver"
        case 1393, 1573: return "ScreenCapture"
        case 1394: return "payment_success"
        case 1395: return "payment_failure"
        case 1396: return "acknowledgment_sent"
        case 1397: return "acknowledgment_received"
        case 1398: return "nfc_scan_failure"
        case 1400, 1436, 1437, 1438, 1439, 1444: return "Notification_Haptic"
        case 1401: return "Ringtone_US_Haptic"
        case 1402: return "Ringtone_UK_Haptic"
        case 1403: return "Alarm_Haptic"
        case 1404: return "SiriStart_Haptic"
        case 1405: return "SiriStopSuccess_Haptic"
        case 1406: return "SiriStopFailure_Haptic"
        case 1407: return "Stockholm_Haptic"
        case 1408: return "Beat_Haptic"
        case 1410: return "DoNotDisturb_Haptic"
        case 1413: return "Timer_Haptic"
        case 1414: return "NavigationLeftTurn_Haptic"
        case 1415: return "NavigationRightTurn_Haptic"
        case 1416: return "Detent_Haptic"
        case 1417: return "NavigationGenericManeuver_Haptic"
        case 1418: return "CameraCountdownTick_Haptic"
        case 1419: return "CameraCountdownImminent_Haptic"
        case 1420: return "ET_RemoteTap_Receive_Haptic"
        case 1421: return "ET_RemoteTap_Send_Haptic"
        case 1422: return "ET_BeginNotification_Haptic"
        case 1424: return "StockholmActive_Haptic"
        case 1425: return "StockholmActiveSingleCycle_Haptic"
        case 1426: return "StockholmFailure_Haptic"
        case 1427: return "SedentaryTimer_Haptic"
        case 1428: return "HourlyChime_Haptic"
        case 1429: return "Preview_AudioAndHaptic"
        case 1430: return "Alert_ActivityGoalAttained_Haptic"
        case 1431: return "Alert_ActivityGoalBehind_Haptic"
        case 1432: return "Alert_ActivityGoalClose_Haptic"
        case 1433: return "Alert_BatteryLow_10p_Haptic"
        case 1434: return "Alert_BatteryLow_5p_Haptic"
        case 1435: return "Alert_Calendar_Haptic"
        case 1440: return "Alert_PassbookBalance_Haptic"
        case 1441: return "Alert_PassbookGeofence_Haptic"
        case 1442: return "Alert_PhotostreamActivity_Haptic"
        case 1443: return "Alert_ReminderDue_Haptic"
        case 1445: return "Alert_WalkieTalkie_Haptic"
        case 1446: return "BatteryMagsafe_Haptic"
        case 1447: return "BuddyPairingFailure_Haptic"
        case 1448: return "BuddyPairingSuccess_Haptic"
        case 1449: return "CameraShutter_Haptic"
        case 1450: return "Alert_MapsDirectionsInApp_Haptic"
        case 1451: return "MessagesIncoming_Haptic"
        case 1452: return "MessagesOutgoing_Haptic"
        case 1453: return "OnOffPasscodeFailure_Haptic"
        case 1458: return "OrbLayers_Haptic"
        case 1459: return "PhoneHangUp_Haptic"
        case 1460: return "PhotosZoomDetent_Haptic"
        case 1461: return "QB_Dictation_Haptic"
        case 1464: return "StopwatchLap_Haptic"
        case 1465: return "StopwatchReset_Haptic"
        case 1466: return "StopwatchStart_Haptic"
        case 1467: return "StopwatchStop_Haptic"
        case 1468: return "TimerCancel_Haptic"
        case 1469: return "TimerPause_Haptic"
        case 1470: return "TimerStart_Haptic"
        case 1471: return "TimerWheelHoursDetent_Haptic"
        case 1472: return "WalkieTalkieActiveStart_Haptic"
        case 1473: return "WorkoutComplete_Haptic"
        case 1474: return "WorkoutCountdown_Haptic"
        case 1475: return "Alert_3rdParty_Haptic"
        case 1476: return "WorkoutSelect_Haptic"
        case 1477: return "WorkoutPressStart_Haptic"
        case 1479: return "TimerWheelMinutesDetent_Haptic"
        case 1480: return "PhoneAnswer_Haptic"
        case 1481: return "PhoneHold_Haptic"
        case 1482: return "WalkieTalkieActiveEnd_Haptic"
        case 1484: return "UISwitch_On_Haptic"
        case 1485: return "UISwitch_Off_Haptic"
        case 1486: return "UISwipe_Haptic"
        case 1487: return "SystemStartup_Haptic"
        case 1488: return "BuddyPairingRemoteConnection_Haptic"
        case 1489: return "BuddyPairingRemoteTap_Haptic"
        case 1490: return "QB_Dictation_Off_Haptic"
        case 1491: return "RingtoneDucked_US_Haptic"
        case 1492: return "RingtoneDucked_UK_Haptic"
        case 1493: return "SalientNotification_Haptic"
        case 1494, 1497, 1498, 1500: return "Notification_Salient_Haptic"
        case 1495: return "ET_BeginNotification_Salient_Haptic"
        case 1496: return "Alert_Calendar_Salient_Haptic"
        case 1499: return "Alert_ReminderDue_Salient_Haptic"
        case 1501: return "Alert_3rdParty_Salient_Haptic"
        case 1502: return "3rdParty_DirectionUp_Haptic"
        case 1503: return "3rdParty_DirectionDown_Haptic"
        case 1504: return "3rdParty_Success_Haptic"
        case 1505: return "3rdParty_Failure_Haptic"
        case 1506: return "3rdParty_Retry_Haptic"
        case 1507: return "3rdParty_Start_Haptic"
        case 1508: return "3rdParty_Stop_Haptic"
        case 1509: return "Alarm_Nightstand_Haptic"
        case 1510: return "Alert_BatteryLow_5p_Salient_Haptic"
        case 1511: return "NavigationLeftTurn_Salient_Haptic"
        case 1512: return "NavigationRightTurn_Salient_Haptic"
        case 1513: return "NavigationGenericManeuver_Salient_Haptic"
        case 1514: return "SedentaryTimer_Salient_Haptic"
        case 1515: return "Alert_ActivityGoalAttained_Salient_Haptic"
        case 1516: return "Alert_ActivityGoalBehind_Salient_Haptic"
        case 1517: return "Alert_PassbookGeofence_Salient_Haptic"
        case 1518: return "WorkoutSaved_Haptic"
        case 1522: return "VoiceOver_Click_Haptic"
        case 1523: return "SiriAutoSend_Haptic"
        case 1525: return "HummingbirdCompletion_Haptic"
        case 1526: return "HummingbirdNotification_Haptic"
        case 1527: return "RemoteCameraShutterBurstBegin_Haptic"
        case 1528: return "RemoteCameraShutterBurstEnd_Haptic"
        case 1529: return "WorkoutPaused_Haptic"
        case 1530: return "WorkoutResumed_Haptic"
        case 1531: return "GoToSleep_Haptic"
        case 1532: return "Warsaw_Haptic"
        case 1533: return "AutoUnlock_Haptic"
        case 1534: return "Alert_ActivityFriendsGoalAttained_Haptic"
        case 1535: return "Alert_SpartanConnecting_Haptic"
        case 1536: return "Alert_SpartanConnecting_LowLatency_Haptic"
        case 1537: return "Alert_SpartanConnected_LowLatency_Haptic"
        case 1538: return "Alert_SpartanDisconnected_LowLatency_Haptic"
        case 1543: return "AccessScanComplete_Haptic"
        case 1544: return "BuddyMigrationStart_Haptic"
        case 1545: return "SOSFallDetectionPrompt_Haptic"
        case 1546: return "SOSEmergencyContactTextPrompt_Haptic"
        case 1547: return "WorkoutStartAutodetect"
        case 1548: return "WorkoutCompleteAutodetect"
        case 1549: return "WorkoutPausedAutoDetect"
        case 1550: return "WorkoutResumedAutoDetect"
        case 1551: return "WorkoutPaceAbove"
        case 1552: return "WorkoutPaceBelow"
        case 1553: return "WalkieTalkieReceiveStart_Haptic"
        case 1554: return "WalkieTalkieReceiveEnd_Haptic"
        case 1555: return "Alert_Health_Haptic"
        case 1558: return "MultiwayInvitation"
        case 1559: return "3rd_Party_Critical_Haptic"
        case 1560: return "Alert_1stParty_Haptic"
        case 1563: return "Siren_Countdown_Major_Haptic"
        case 1564: return "Siren_Countdown_Minor_Haptic"
        case 1566: return "Doorbell_Haptic"
        case 1567: return "System_Notification_Haptic"
        case 1568: return "SOSFallDetectionPromptEscalation_Haptic"
        case 1570: return "HealthReadingComplete_Haptic"
        case 1571: return "HealthReadingFail_Haptic"
        case 1582: return "IntervalEnded"
        case 1583: return "IntervalUpcoming"
        default: return ""
        }
    }
}
extension SystemSoundKey {
    public var ids: [Int] {
        switch self {
        case .ringbackToneAnsi: return [30]
        case .ringbackToneCept: return [31]
        case .busyToneAnsi: return [32]
        case .busyToneCept: return [33]
        case .callWaitingToneAnsi: return [34]
        case .callWaitingToneCept: return [35]
        case .endCallToneCept: return [36]
        case .ringbackToneHk: return [37]
        case .ringbackToneAus: return [38]
        case .ringbackToneUk: return [39]
        case .newMail: return [1000, 1302]
        case .mailSent: return [1001, 1303]
        case .smsReceived1: return [1002, 1007, 1012, 1015, 1300, 1307, 1312, 1315]
        case .receivedMessage: return [1003, 1301]
        case .sentMessage: return [1004]
        case .alarm: return [1005, 1017, 1304, 1317]
        case .lowPower: return [1006]
        case .smsReceived2: return [1008, 1308]
        case .smsReceived3: return [1009, 1309]
        case .smsReceived4: return [1010, 1310]
        case .smsReceived5: return [1013, 1313]
        case .smsReceived6: return [1014, 1314]
        case .tweetSent: return [1016]
        case .swish: return [1018, 1318]
        case .anticipate: return [1020, 1320]
        case .bloom: return [1021, 1321]
        case .calypso: return [1022, 1322]
        case .chooChoo: return [1023, 1323]
        case .descent: return [1024, 1324]
        case .fanfare: return [1025, 1325]
        case .ladder: return [1026, 1326]
        case .minuet: return [1027, 1327]
        case .newsFlash: return [1028, 1328]
        case .noir: return [1029, 1329]
        case .sherwoodForest: return [1030, 1330]
        case .spell: return [1031, 1331]
        case .suspense: return [1032, 1332]
        case .telegraph: return [1033, 1333]
        case .tiptoes: return [1034, 1334]
        case .typewriters: return [1035, 1335]
        case .update: return [1036, 1336]
        case .ussd: return [1050]
        case .sIMToolkitCallDropped: return [1051]
        case .sIMToolkitGeneralBeep: return [1052]
        case .sIMToolkitNegativeACK: return [1053]
        case .sIMToolkitPositiveACK: return [1054]
        case .sIMToolkitSMS: return [1055]
        case .tink: return [1057, 1103]
        case .webcamStart: return [1060]
        case .ctBusy: return [1070]
        case .ctCongestion: return [1071]
        case .ctPathAck: return [1072]
        case .ctError: return [1073]
        case .ctCallWaiting: return [1074, 1153]
        case .ctKeytone2: return [1075]
        case .lock: return [1100, 1305]
        case .keyPressClick: return [1104, 1123, 1306]
        case .tock: return [1105]
        case .connectPower: return [1106, 1360, 1361]
        case .ringerChanged: return [1107]
        case .photoShutter: return [1108]
        case .shake: return [1109]
        case .jblBegin: return [1110]
        case .jblConfirm: return [1111]
        case .jblCancel: return [1112]
        case .beginRecord: return [1113, 1117]
        case .endRecord: return [1114, 1118]
        case .jblAmbiguous: return [1115]
        case .jblNoMatch: return [1116]
        case .cameraShutterBurst: return [1119]
        case .cameraShutterBurstBegin: return [1121]
        case .cameraShutterBurstEnd: return [1122]
        case .focusChangeKeyboard: return [1124]
        case .focusChangeAppIcon: return [1125]
        case .focusChangeLarge: return [1126]
        case .focusChangeSmall: return [1127]
        case .navigationPush: return [1128]
        case .navigationPop: return [1129]
        case .keyboardPressNormal: return [1130]
        case .keyboardPressDelete: return [1131]
        case .keyboardPressClear: return [1132]
        case .vcInvitationAccepted: return [1150]
        case .vcRinging: return [1151, 1154]
        case .vcEnded: return [1152]
        case .keyPressDelete: return [1155]
        case .keyPressModifier: return [1156]
        case .wheelsOfTime: return [1157]
        case .goToSleepAlert: return [1158]
        case .warsaw: return [1159]
        case .nfcScanComplete: return [1160]
        case .accessScanComplete: return [1163]
        case ._3rdPartyCritical: return [1165]
        case .paymentReceived: return [1166]
        case .doorbell: return [1167]
        case .paymentReceivedFailure: return [1168]
        case .dtmf0: return [1200]
        case .dtmf1: return [1201]
        case .dtmf2: return [1202]
        case .dtmf3: return [1203]
        case .dtmf4: return [1204]
        case .dtmf5: return [1205]
        case .dtmf6: return [1206]
        case .dtmf7: return [1207]
        case .dtmf8: return [1208]
        case .dtmf9: return [1209]
        case .dtmfStar: return [1210]
        case .dtmfPound: return [1211]
        case .deviceShutdown: return [1253]
        case .longLowShortHigh: return [1254]
        case .shortDoubleHigh: return [1255]
        case .shortLowHigh: return [1256]
        case .shortDoubleLow: return [1257, 1258]
        case .middle9ShortDoubleLow: return [1259]
        case .cameraTimerFinalSecond: return [1260]
        case .cameraTimerCountdown: return [1261]
        case .healthNotification: return [1262]
        case .multiwayJoin: return [1263, 1556]
        case .multiwayLeave: return [1264, 1557]
        case .multiway_invitation: return [1265]
        case .pushToTalkJoined: return [1270, 1576]
        case .pushToTalkLeft: return [1271, 1577]
        case .pushToTalkUnmute: return [1272, 1578]
        case .pushToTalkMute: return [1273, 1579]
        case .pushToTalkUnmuteFail: return [1274, 1580]
        case .pINEnterDigitAX: return [1340]
        case .pINDeleteAX: return [1341]
        case .pINSubmitAX: return [1342]
        case .pINUnexpected: return [1343]
        case .pINEnterDigit: return [1344]
        case .pINDelete: return [1345]
        case .headphoneAudioExposureLimitExceeded: return [1362, 1572]
        case .healthNotificationUrgent: return [1363, 1561]
        case .micMute: return [1364]
        case .micUnmute: return [1365]
        case .micUnmuteFail: return [1366]
        case .screenSharingStarted: return [1367]
        case .mediaPaused: return [1368]
        case .mediaHandoff: return [1369]
        case .navigationGenericManeuver: return [1370]
        case .screenCapture: return [1393, 1573]
        case .paymentSuccess: return [1394]
        case .paymentFailure: return [1395]
        case .acknowledgmentSent: return [1396]
        case .acknowledgmentReceived: return [1397]
        case .nfcScanFailure: return [1398]
        case .notificationHaptic: return [1400, 1436, 1437, 1438, 1439, 1444]
        case .ringtoneUSHaptic: return [1401]
        case .ringtoneUKHaptic: return [1402]
        case .alarmHaptic: return [1403]
        case .siriStartHaptic: return [1404]
        case .siriStopSuccessHaptic: return [1405]
        case .siriStopFailureHaptic: return [1406]
        case .stockholmHaptic: return [1407]
        case .beatHaptic: return [1408]
        case .doNotDisturbHaptic: return [1410]
        case .timerHaptic: return [1413]
        case .navigationLeftTurnHaptic: return [1414]
        case .navigationRightTurnHaptic: return [1415]
        case .detentHaptic: return [1416]
        case .navigationGenericManeuverHaptic: return [1417]
        case .cameraCountdownTickHaptic: return [1418]
        case .cameraCountdownImminentHaptic: return [1419]
        case .eTRemoteTapReceiveHaptic: return [1420]
        case .eTRemoteTapSendHaptic: return [1421]
        case .eTBeginNotificationHaptic: return [1422]
        case .stockholmActiveHaptic: return [1424]
        case .stockholmActiveSingleCycleHaptic: return [1425]
        case .stockholmFailureHaptic: return [1426]
        case .sedentaryTimerHaptic: return [1427]
        case .hourlyChimeHaptic: return [1428]
        case .previewAudioAndHaptic: return [1429]
        case .alertActivityGoalAttainedHaptic: return [1430]
        case .alertActivityGoalBehindHaptic: return [1431]
        case .alertActivityGoalCloseHaptic: return [1432]
        case .alertBatteryLow10pHaptic: return [1433]
        case .alertBatteryLow5pHaptic: return [1434]
        case .alertCalendarHaptic: return [1435]
        case .alertPassbookBalanceHaptic: return [1440]
        case .alertPassbookGeofenceHaptic: return [1441]
        case .alertPhotostreamActivityHaptic: return [1442]
        case .alertReminderDueHaptic: return [1443]
        case .alertWalkieTalkieHaptic: return [1445]
        case .batteryMagsafeHaptic: return [1446]
        case .buddyPairingFailureHaptic: return [1447]
        case .buddyPairingSuccessHaptic: return [1448]
        case .cameraShutterHaptic: return [1449]
        case .alertMapsDirectionsInAppHaptic: return [1450]
        case .messagesIncomingHaptic: return [1451]
        case .messagesOutgoingHaptic: return [1452]
        case .onOffPasscodeFailureHaptic: return [1453]
        case .orbLayersHaptic: return [1458]
        case .phoneHangUpHaptic: return [1459]
        case .photosZoomDetentHaptic: return [1460]
        case .qBDictationHaptic: return [1461]
        case .stopwatchLapHaptic: return [1464]
        case .stopwatchResetHaptic: return [1465]
        case .stopwatchStartHaptic: return [1466]
        case .stopwatchStopHaptic: return [1467]
        case .timerCancelHaptic: return [1468]
        case .timerPauseHaptic: return [1469]
        case .timerStartHaptic: return [1470]
        case .timerWheelHoursDetentHaptic: return [1471]
        case .walkieTalkieActiveStartHaptic: return [1472]
        case .workoutCompleteHaptic: return [1473]
        case .workoutCountdownHaptic: return [1474]
        case .alert3rdPartyHaptic: return [1475]
        case .workoutSelectHaptic: return [1476]
        case .workoutPressStartHaptic: return [1477]
        case .timerWheelMinutesDetentHaptic: return [1479]
        case .phoneAnswerHaptic: return [1480]
        case .phoneHoldHaptic: return [1481]
        case .walkieTalkieActiveEndHaptic: return [1482]
        case .uISwitchOnHaptic: return [1484]
        case .uISwitchOffHaptic: return [1485]
        case .uISwipeHaptic: return [1486]
        case .systemStartupHaptic: return [1487]
        case .buddyPairingRemoteConnectionHaptic: return [1488]
        case .buddyPairingRemoteTapHaptic: return [1489]
        case .qBDictationOffHaptic: return [1490]
        case .ringtoneDuckedUSHaptic: return [1491]
        case .ringtoneDuckedUKHaptic: return [1492]
        case .salientNotificationHaptic: return [1493]
        case .notificationSalientHaptic: return [1494, 1497, 1498, 1500]
        case .eTBeginNotificationSalientHaptic: return [1495]
        case .alertCalendarSalientHaptic: return [1496]
        case .alertReminderDueSalientHaptic: return [1499]
        case .alert3rdPartySalientHaptic: return [1501]
        case ._3rdPartyDirectionUpHaptic: return [1502]
        case ._3rdPartyDirectionDownHaptic: return [1503]
        case ._3rdPartySuccessHaptic: return [1504]
        case ._3rdPartyFailureHaptic: return [1505]
        case ._3rdPartyRetryHaptic: return [1506]
        case ._3rdPartyStartHaptic: return [1507]
        case ._3rdPartyStopHaptic: return [1508]
        case .alarmNightstandHaptic: return [1509]
        case .alertBatteryLow5pSalientHaptic: return [1510]
        case .navigationLeftTurnSalientHaptic: return [1511]
        case .navigationRightTurnSalientHaptic: return [1512]
        case .navigationGenericManeuverSalientHaptic: return [1513]
        case .sedentaryTimerSalientHaptic: return [1514]
        case .alertActivityGoalAttainedSalientHaptic: return [1515]
        case .alertActivityGoalBehindSalientHaptic: return [1516]
        case .alertPassbookGeofenceSalientHaptic: return [1517]
        case .workoutSavedHaptic: return [1518]
        case .voiceOverClickHaptic: return [1522]
        case .siriAutoSendHaptic: return [1523]
        case .hummingbirdCompletionHaptic: return [1525]
        case .hummingbirdNotificationHaptic: return [1526]
        case .remoteCameraShutterBurstBeginHaptic: return [1527]
        case .remoteCameraShutterBurstEndHaptic: return [1528]
        case .workoutPausedHaptic: return [1529]
        case .workoutResumedHaptic: return [1530]
        case .goToSleepHaptic: return [1531]
        case .warsawHaptic: return [1532]
        case .autoUnlockHaptic: return [1533]
        case .alertActivityFriendsGoalAttainedHaptic: return [1534]
        case .alertSpartanConnectingHaptic: return [1535]
        case .alertSpartanConnectingLowLatencyHaptic: return [1536]
        case .alertSpartanConnectedLowLatencyHaptic: return [1537]
        case .alertSpartanDisconnectedLowLatencyHaptic: return [1538]
        case .accessScanCompleteHaptic: return [1543]
        case .buddyMigrationStartHaptic: return [1544]
        case .sOSFallDetectionPromptHaptic: return [1545]
        case .sOSEmergencyContactTextPromptHaptic: return [1546]
        case .workoutStartAutodetect: return [1547]
        case .workoutCompleteAutodetect: return [1548]
        case .workoutPausedAutoDetect: return [1549]
        case .workoutResumedAutoDetect: return [1550]
        case .workoutPaceAbove: return [1551]
        case .workoutPaceBelow: return [1552]
        case .walkieTalkieReceiveStartHaptic: return [1553]
        case .walkieTalkieReceiveEndHaptic: return [1554]
        case .alertHealthHaptic: return [1555]
        case .multiwayInvitation: return [1558]
        case ._3rdPartyCriticalHaptic: return [1559]
        case .alert1stPartyHaptic: return [1560]
        case .sirenCountdownMajorHaptic: return [1563]
        case .sirenCountdownMinorHaptic: return [1564]
        case .doorbellHaptic: return [1566]
        case .systemNotificationHaptic: return [1567]
        case .sOSFallDetectionPromptEscalationHaptic: return [1568]
        case .healthReadingCompleteHaptic: return [1570]
        case .healthReadingFailHaptic: return [1571]
        case .intervalEnded: return [1582]
        case .intervalUpcoming: return [1583]
        }
    }
}
extension SystemSoundKey {
    public init?(rawValue: Int) {
        switch rawValue {
        case 30: self = .ringbackToneAnsi
        case 31: self = .ringbackToneCept
        case 32: self = .busyToneAnsi
        case 33: self = .busyToneCept
        case 34: self = .callWaitingToneAnsi
        case 35: self = .callWaitingToneCept
        case 36: self = .endCallToneCept
        case 37: self = .ringbackToneHk
        case 38: self = .ringbackToneAus
        case 39: self = .ringbackToneUk
        case 1000, 1302: self = .newMail
        case 1001, 1303: self = .mailSent
        case 1002, 1007, 1012, 1015, 1300, 1307, 1312, 1315: self = .smsReceived1
        case 1003, 1301: self = .receivedMessage
        case 1004: self = .sentMessage
        case 1005, 1017, 1304, 1317: self = .alarm
        case 1006: self = .lowPower
        case 1008, 1308: self = .smsReceived2
        case 1009, 1309: self = .smsReceived3
        case 1010, 1310: self = .smsReceived4
        case 1013, 1313: self = .smsReceived5
        case 1014, 1314: self = .smsReceived6
        case 1016: self = .tweetSent
        case 1018, 1318: self = .swish
        case 1020, 1320: self = .anticipate
        case 1021, 1321: self = .bloom
        case 1022, 1322: self = .calypso
        case 1023, 1323: self = .chooChoo
        case 1024, 1324: self = .descent
        case 1025, 1325: self = .fanfare
        case 1026, 1326: self = .ladder
        case 1027, 1327: self = .minuet
        case 1028, 1328: self = .newsFlash
        case 1029, 1329: self = .noir
        case 1030, 1330: self = .sherwoodForest
        case 1031, 1331: self = .spell
        case 1032, 1332: self = .suspense
        case 1033, 1333: self = .telegraph
        case 1034, 1334: self = .tiptoes
        case 1035, 1335: self = .typewriters
        case 1036, 1336: self = .update
        case 1050: self = .ussd
        case 1051: self = .sIMToolkitCallDropped
        case 1052: self = .sIMToolkitGeneralBeep
        case 1053: self = .sIMToolkitNegativeACK
        case 1054: self = .sIMToolkitPositiveACK
        case 1055: self = .sIMToolkitSMS
        case 1057, 1103: self = .tink
        case 1060: self = .webcamStart
        case 1070: self = .ctBusy
        case 1071: self = .ctCongestion
        case 1072: self = .ctPathAck
        case 1073: self = .ctError
        case 1074, 1153: self = .ctCallWaiting
        case 1075: self = .ctKeytone2
        case 1100, 1305: self = .lock
        case 1104, 1123, 1306: self = .keyPressClick
        case 1105: self = .tock
        case 1106, 1360, 1361: self = .connectPower
        case 1107: self = .ringerChanged
        case 1108: self = .photoShutter
        case 1109: self = .shake
        case 1110: self = .jblBegin
        case 1111: self = .jblConfirm
        case 1112: self = .jblCancel
        case 1113, 1117: self = .beginRecord
        case 1114, 1118: self = .endRecord
        case 1115: self = .jblAmbiguous
        case 1116: self = .jblNoMatch
        case 1119: self = .cameraShutterBurst
        case 1121: self = .cameraShutterBurstBegin
        case 1122: self = .cameraShutterBurstEnd
        case 1124: self = .focusChangeKeyboard
        case 1125: self = .focusChangeAppIcon
        case 1126: self = .focusChangeLarge
        case 1127: self = .focusChangeSmall
        case 1128: self = .navigationPush
        case 1129: self = .navigationPop
        case 1130: self = .keyboardPressNormal
        case 1131: self = .keyboardPressDelete
        case 1132: self = .keyboardPressClear
        case 1150: self = .vcInvitationAccepted
        case 1151, 1154: self = .vcRinging
        case 1152: self = .vcEnded
        case 1155: self = .keyPressDelete
        case 1156: self = .keyPressModifier
        case 1157: self = .wheelsOfTime
        case 1158: self = .goToSleepAlert
        case 1159: self = .warsaw
        case 1160: self = .nfcScanComplete
        case 1163: self = .accessScanComplete
        case 1165: self = ._3rdPartyCritical
        case 1166: self = .paymentReceived
        case 1167: self = .doorbell
        case 1168: self = .paymentReceivedFailure
        case 1200: self = .dtmf0
        case 1201: self = .dtmf1
        case 1202: self = .dtmf2
        case 1203: self = .dtmf3
        case 1204: self = .dtmf4
        case 1205: self = .dtmf5
        case 1206: self = .dtmf6
        case 1207: self = .dtmf7
        case 1208: self = .dtmf8
        case 1209: self = .dtmf9
        case 1210: self = .dtmfStar
        case 1211: self = .dtmfPound
        case 1253: self = .deviceShutdown
        case 1254: self = .longLowShortHigh
        case 1255: self = .shortDoubleHigh
        case 1256: self = .shortLowHigh
        case 1257, 1258: self = .shortDoubleLow
        case 1259: self = .middle9ShortDoubleLow
        case 1260: self = .cameraTimerFinalSecond
        case 1261: self = .cameraTimerCountdown
        case 1262: self = .healthNotification
        case 1263, 1556: self = .multiwayJoin
        case 1264, 1557: self = .multiwayLeave
        case 1265: self = .multiway_invitation
        case 1270, 1576: self = .pushToTalkJoined
        case 1271, 1577: self = .pushToTalkLeft
        case 1272, 1578: self = .pushToTalkUnmute
        case 1273, 1579: self = .pushToTalkMute
        case 1274, 1580: self = .pushToTalkUnmuteFail
        case 1340: self = .pINEnterDigitAX
        case 1341: self = .pINDeleteAX
        case 1342: self = .pINSubmitAX
        case 1343: self = .pINUnexpected
        case 1344: self = .pINEnterDigit
        case 1345: self = .pINDelete
        case 1362, 1572: self = .headphoneAudioExposureLimitExceeded
        case 1363, 1561: self = .healthNotificationUrgent
        case 1364: self = .micMute
        case 1365: self = .micUnmute
        case 1366: self = .micUnmuteFail
        case 1367: self = .screenSharingStarted
        case 1368: self = .mediaPaused
        case 1369: self = .mediaHandoff
        case 1370: self = .navigationGenericManeuver
        case 1393, 1573: self = .screenCapture
        case 1394: self = .paymentSuccess
        case 1395: self = .paymentFailure
        case 1396: self = .acknowledgmentSent
        case 1397: self = .acknowledgmentReceived
        case 1398: self = .nfcScanFailure
        case 1400, 1436, 1437, 1438, 1439, 1444: self = .notificationHaptic
        case 1401: self = .ringtoneUSHaptic
        case 1402: self = .ringtoneUKHaptic
        case 1403: self = .alarmHaptic
        case 1404: self = .siriStartHaptic
        case 1405: self = .siriStopSuccessHaptic
        case 1406: self = .siriStopFailureHaptic
        case 1407: self = .stockholmHaptic
        case 1408: self = .beatHaptic
        case 1410: self = .doNotDisturbHaptic
        case 1413: self = .timerHaptic
        case 1414: self = .navigationLeftTurnHaptic
        case 1415: self = .navigationRightTurnHaptic
        case 1416: self = .detentHaptic
        case 1417: self = .navigationGenericManeuverHaptic
        case 1418: self = .cameraCountdownTickHaptic
        case 1419: self = .cameraCountdownImminentHaptic
        case 1420: self = .eTRemoteTapReceiveHaptic
        case 1421: self = .eTRemoteTapSendHaptic
        case 1422: self = .eTBeginNotificationHaptic
        case 1424: self = .stockholmActiveHaptic
        case 1425: self = .stockholmActiveSingleCycleHaptic
        case 1426: self = .stockholmFailureHaptic
        case 1427: self = .sedentaryTimerHaptic
        case 1428: self = .hourlyChimeHaptic
        case 1429: self = .previewAudioAndHaptic
        case 1430: self = .alertActivityGoalAttainedHaptic
        case 1431: self = .alertActivityGoalBehindHaptic
        case 1432: self = .alertActivityGoalCloseHaptic
        case 1433: self = .alertBatteryLow10pHaptic
        case 1434: self = .alertBatteryLow5pHaptic
        case 1435: self = .alertCalendarHaptic
        case 1440: self = .alertPassbookBalanceHaptic
        case 1441: self = .alertPassbookGeofenceHaptic
        case 1442: self = .alertPhotostreamActivityHaptic
        case 1443: self = .alertReminderDueHaptic
        case 1445: self = .alertWalkieTalkieHaptic
        case 1446: self = .batteryMagsafeHaptic
        case 1447: self = .buddyPairingFailureHaptic
        case 1448: self = .buddyPairingSuccessHaptic
        case 1449: self = .cameraShutterHaptic
        case 1450: self = .alertMapsDirectionsInAppHaptic
        case 1451: self = .messagesIncomingHaptic
        case 1452: self = .messagesOutgoingHaptic
        case 1453: self = .onOffPasscodeFailureHaptic
        case 1458: self = .orbLayersHaptic
        case 1459: self = .phoneHangUpHaptic
        case 1460: self = .photosZoomDetentHaptic
        case 1461: self = .qBDictationHaptic
        case 1464: self = .stopwatchLapHaptic
        case 1465: self = .stopwatchResetHaptic
        case 1466: self = .stopwatchStartHaptic
        case 1467: self = .stopwatchStopHaptic
        case 1468: self = .timerCancelHaptic
        case 1469: self = .timerPauseHaptic
        case 1470: self = .timerStartHaptic
        case 1471: self = .timerWheelHoursDetentHaptic
        case 1472: self = .walkieTalkieActiveStartHaptic
        case 1473: self = .workoutCompleteHaptic
        case 1474: self = .workoutCountdownHaptic
        case 1475: self = .alert3rdPartyHaptic
        case 1476: self = .workoutSelectHaptic
        case 1477: self = .workoutPressStartHaptic
        case 1479: self = .timerWheelMinutesDetentHaptic
        case 1480: self = .phoneAnswerHaptic
        case 1481: self = .phoneHoldHaptic
        case 1482: self = .walkieTalkieActiveEndHaptic
        case 1484: self = .uISwitchOnHaptic
        case 1485: self = .uISwitchOffHaptic
        case 1486: self = .uISwipeHaptic
        case 1487: self = .systemStartupHaptic
        case 1488: self = .buddyPairingRemoteConnectionHaptic
        case 1489: self = .buddyPairingRemoteTapHaptic
        case 1490: self = .qBDictationOffHaptic
        case 1491: self = .ringtoneDuckedUSHaptic
        case 1492: self = .ringtoneDuckedUKHaptic
        case 1493: self = .salientNotificationHaptic
        case 1494, 1497, 1498, 1500: self = .notificationSalientHaptic
        case 1495: self = .eTBeginNotificationSalientHaptic
        case 1496: self = .alertCalendarSalientHaptic
        case 1499: self = .alertReminderDueSalientHaptic
        case 1501: self = .alert3rdPartySalientHaptic
        case 1502: self = ._3rdPartyDirectionUpHaptic
        case 1503: self = ._3rdPartyDirectionDownHaptic
        case 1504: self = ._3rdPartySuccessHaptic
        case 1505: self = ._3rdPartyFailureHaptic
        case 1506: self = ._3rdPartyRetryHaptic
        case 1507: self = ._3rdPartyStartHaptic
        case 1508: self = ._3rdPartyStopHaptic
        case 1509: self = .alarmNightstandHaptic
        case 1510: self = .alertBatteryLow5pSalientHaptic
        case 1511: self = .navigationLeftTurnSalientHaptic
        case 1512: self = .navigationRightTurnSalientHaptic
        case 1513: self = .navigationGenericManeuverSalientHaptic
        case 1514: self = .sedentaryTimerSalientHaptic
        case 1515: self = .alertActivityGoalAttainedSalientHaptic
        case 1516: self = .alertActivityGoalBehindSalientHaptic
        case 1517: self = .alertPassbookGeofenceSalientHaptic
        case 1518: self = .workoutSavedHaptic
        case 1522: self = .voiceOverClickHaptic
        case 1523: self = .siriAutoSendHaptic
        case 1525: self = .hummingbirdCompletionHaptic
        case 1526: self = .hummingbirdNotificationHaptic
        case 1527: self = .remoteCameraShutterBurstBeginHaptic
        case 1528: self = .remoteCameraShutterBurstEndHaptic
        case 1529: self = .workoutPausedHaptic
        case 1530: self = .workoutResumedHaptic
        case 1531: self = .goToSleepHaptic
        case 1532: self = .warsawHaptic
        case 1533: self = .autoUnlockHaptic
        case 1534: self = .alertActivityFriendsGoalAttainedHaptic
        case 1535: self = .alertSpartanConnectingHaptic
        case 1536: self = .alertSpartanConnectingLowLatencyHaptic
        case 1537: self = .alertSpartanConnectedLowLatencyHaptic
        case 1538: self = .alertSpartanDisconnectedLowLatencyHaptic
        case 1543: self = .accessScanCompleteHaptic
        case 1544: self = .buddyMigrationStartHaptic
        case 1545: self = .sOSFallDetectionPromptHaptic
        case 1546: self = .sOSEmergencyContactTextPromptHaptic
        case 1547: self = .workoutStartAutodetect
        case 1548: self = .workoutCompleteAutodetect
        case 1549: self = .workoutPausedAutoDetect
        case 1550: self = .workoutResumedAutoDetect
        case 1551: self = .workoutPaceAbove
        case 1552: self = .workoutPaceBelow
        case 1553: self = .walkieTalkieReceiveStartHaptic
        case 1554: self = .walkieTalkieReceiveEndHaptic
        case 1555: self = .alertHealthHaptic
        case 1558: self = .multiwayInvitation
        case 1559: self = ._3rdPartyCriticalHaptic
        case 1560: self = .alert1stPartyHaptic
        case 1563: self = .sirenCountdownMajorHaptic
        case 1564: self = .sirenCountdownMinorHaptic
        case 1566: self = .doorbellHaptic
        case 1567: self = .systemNotificationHaptic
        case 1568: self = .sOSFallDetectionPromptEscalationHaptic
        case 1570: self = .healthReadingCompleteHaptic
        case 1571: self = .healthReadingFailHaptic
        case 1582: self = .intervalEnded
        case 1583: self = .intervalUpcoming
        default: return nil
        }
    }
}
