public enum SystemSoundKey: Int, CaseIterable {
    case ringbackToneAnsi = 30

    case ringbackToneCept = 31

    case busyToneAnsi = 32

    case busyToneCept = 33

    case callWaitingToneAnsi = 34

    case callWaitingToneCept = 35

    case endCallToneCept = 36

    case ringbackToneHk = 37

    case ringbackToneAus = 38

    case ringbackToneUk = 39

    case sentMessage = 1004

    case lowPower = 1006

    case smsReceived2 = 1008

    case smsReceived3 = 1009

    case smsReceived4 = 1010

    case smsReceived5 = 1013

    case smsReceived6 = 1014

    case smsReceived1 = 1015

    case tweetSent = 1016

    case alarm = 1017

    case swish = 1018

    case anticipate = 1020

    case bloom = 1021

    case calypso = 1022

    case chooChoo = 1023

    case descent = 1024

    case fanfare = 1025

    case ladder = 1026

    case minuet = 1027

    case newsFlash = 1028

    case noir = 1029

    case sherwoodForest = 1030

    case spell = 1031

    case suspense = 1032

    case telegraph = 1033

    case tiptoes = 1034

    case typewriters = 1035

    case update = 1036

    case ussd = 1050

    case sIMToolkitCallDropped = 1051

    case sIMToolkitGeneralBeep = 1052

    case sIMToolkitNegativeACK = 1053

    case sIMToolkitPositiveACK = 1054

    case sIMToolkitSMS = 1055

    case webcamStart = 1060

    case ctBusy = 1070

    case ctCongestion = 1071

    case ctPathAck = 1072

    case ctError = 1073

    case ctKeytone2 = 1075

    case tink = 1103

    case tock = 1105

    case ringerChanged = 1107

    case photoShutter = 1108

    case shake = 1109

    case jblBegin = 1110

    case jblConfirm = 1111

    case jblCancel = 1112

    case jblAmbiguous = 1115

    case jblNoMatch = 1116

    case beginRecord = 1117

    case endRecord = 1118

    case cameraShutterBurst = 1119

    case cameraShutterBurstBegin = 1121

    case cameraShutterBurstEnd = 1122

    case focusChangeKeyboard = 1124

    case focusChangeAppIcon = 1125

    case focusChangeLarge = 1126

    case focusChangeSmall = 1127

    case navigationPush = 1128

    case navigationPop = 1129

    case keyboardPressNormal = 1130

    case keyboardPressDelete = 1131

    case keyboardPressClear = 1132

    case vcInvitationAccepted = 1150

    case vcEnded = 1152

    case ctCallWaiting = 1153

    case vcRinging = 1154

    case keyPressDelete = 1155

    case keyPressModifier = 1156

    case wheelsOfTime = 1157

    case goToSleepAlert = 1158

    case warsaw = 1159

    case nfcScanComplete = 1160

    case accessScanComplete = 1163

    case _3rdPartyCritical = 1165

    case paymentReceived = 1166

    case doorbell = 1167

    case paymentReceivedFailure = 1168

    case dtmf0 = 1200

    case dtmf1 = 1201

    case dtmf2 = 1202

    case dtmf3 = 1203

    case dtmf4 = 1204

    case dtmf5 = 1205

    case dtmf6 = 1206

    case dtmf7 = 1207

    case dtmf8 = 1208

    case dtmf9 = 1209

    case dtmfStar = 1210

    case dtmfPound = 1211

    case deviceShutdown = 1253

    case longLowShortHigh = 1254

    case shortDoubleHigh = 1255

    case shortLowHigh = 1256

    case shortDoubleLow = 1258

    case middle9ShortDoubleLow = 1259

    case cameraTimerFinalSecond = 1260

    case cameraTimerCountdown = 1261

    case healthNotification = 1262

    case multiwayInvitation = 1265

    case receivedMessage = 1301

    case newMail = 1302

    case mailSent = 1303

    case lock = 1305

    case keyPressClick = 1306

    case pINEnterDigitAX = 1340

    case pINDeleteAX = 1341

    case pINSubmitAX = 1342

    case pINUnexpected = 1343

    case pINEnterDigit = 1344

    case pINDelete = 1345

    case connectPower = 1361

    case micMute = 1364

    case micUnmute = 1365

    case micUnmuteFail = 1366

    case screenSharingStarted = 1367

    case mediaPaused = 1368

    case mediaHandoff = 1369

    case navigationGenericManeuver = 1370

    case paymentSuccess = 1394

    case paymentFailure = 1395

    case acknowledgmentSent = 1396

    case acknowledgmentReceived = 1397

    case nfcScanFailure = 1398

    case ringtoneUSHaptic = 1401

    case ringtoneUKHaptic = 1402

    case alarmHaptic = 1403

    case siriStartHaptic = 1404

    case siriStopSuccessHaptic = 1405

    case siriStopFailureHaptic = 1406

    case stockholmHaptic = 1407

    case beatHaptic = 1408

    case doNotDisturbHaptic = 1410

    case timerHaptic = 1413

    case navigationLeftTurnHaptic = 1414

    case navigationRightTurnHaptic = 1415

    case detentHaptic = 1416

    case navigationGenericManeuverHaptic = 1417

    case cameraCountdownTickHaptic = 1418

    case cameraCountdownImminentHaptic = 1419

    case eTRemoteTapReceiveHaptic = 1420

    case eTRemoteTapSendHaptic = 1421

    case eTBeginNotificationHaptic = 1422

    case stockholmActiveHaptic = 1424

    case stockholmActiveSingleCycleHaptic = 1425

    case stockholmFailureHaptic = 1426

    case sedentaryTimerHaptic = 1427

    case hourlyChimeHaptic = 1428

    case previewAudioAndHaptic = 1429

    case alertActivityGoalAttainedHaptic = 1430

    case alertActivityGoalBehindHaptic = 1431

    case alertActivityGoalCloseHaptic = 1432

    case alertBatteryLow10pHaptic = 1433

    case alertBatteryLow5pHaptic = 1434

    case alertCalendarHaptic = 1435

    case alertPassbookBalanceHaptic = 1440

    case alertPassbookGeofenceHaptic = 1441

    case alertPhotostreamActivityHaptic = 1442

    case alertReminderDueHaptic = 1443

    case notificationHaptic = 1444

    case alertWalkieTalkieHaptic = 1445

    case batteryMagsafeHaptic = 1446

    case buddyPairingFailureHaptic = 1447

    case buddyPairingSuccessHaptic = 1448

    case cameraShutterHaptic = 1449

    case alertMapsDirectionsInAppHaptic = 1450

    case messagesIncomingHaptic = 1451

    case messagesOutgoingHaptic = 1452

    case onOffPasscodeFailureHaptic = 1453

    case orbLayersHaptic = 1458

    case phoneHangUpHaptic = 1459

    case photosZoomDetentHaptic = 1460

    case qBDictationHaptic = 1461

    case stopwatchLapHaptic = 1464

    case stopwatchResetHaptic = 1465

    case stopwatchStartHaptic = 1466

    case stopwatchStopHaptic = 1467

    case timerCancelHaptic = 1468

    case timerPauseHaptic = 1469

    case timerStartHaptic = 1470

    case timerWheelHoursDetentHaptic = 1471

    case walkieTalkieActiveStartHaptic = 1472

    case workoutCompleteHaptic = 1473

    case workoutCountdownHaptic = 1474

    case alert3rdPartyHaptic = 1475

    case workoutSelectHaptic = 1476

    case workoutPressStartHaptic = 1477

    case timerWheelMinutesDetentHaptic = 1479

    case phoneAnswerHaptic = 1480

    case phoneHoldHaptic = 1481

    case walkieTalkieActiveEndHaptic = 1482

    case uISwitchOnHaptic = 1484

    case uISwitchOffHaptic = 1485

    case uISwipeHaptic = 1486

    case systemStartupHaptic = 1487

    case buddyPairingRemoteConnectionHaptic = 1488

    case buddyPairingRemoteTapHaptic = 1489

    case qBDictationOffHaptic = 1490

    case ringtoneDuckedUSHaptic = 1491

    case ringtoneDuckedUKHaptic = 1492

    case salientNotificationHaptic = 1493

    case eTBeginNotificationSalientHaptic = 1495

    case alertCalendarSalientHaptic = 1496

    case alertReminderDueSalientHaptic = 1499

    case notificationSalientHaptic = 1500

    case alert3rdPartySalientHaptic = 1501

    case _3rdPartyDirectionUpHaptic = 1502

    case _3rdPartyDirectionDownHaptic = 1503

    case _3rdPartySuccessHaptic = 1504

    case _3rdPartyFailureHaptic = 1505

    case _3rdPartyRetryHaptic = 1506

    case _3rdPartyStartHaptic = 1507

    case _3rdPartyStopHaptic = 1508

    case alarmNightstandHaptic = 1509

    case alertBatteryLow5pSalientHaptic = 1510

    case navigationLeftTurnSalientHaptic = 1511

    case navigationRightTurnSalientHaptic = 1512

    case navigationGenericManeuverSalientHaptic = 1513

    case sedentaryTimerSalientHaptic = 1514

    case alertActivityGoalAttainedSalientHaptic = 1515

    case alertActivityGoalBehindSalientHaptic = 1516

    case alertPassbookGeofenceSalientHaptic = 1517

    case workoutSavedHaptic = 1518

    case voiceOverClickHaptic = 1522

    case siriAutoSendHaptic = 1523

    case hummingbirdCompletionHaptic = 1525

    case hummingbirdNotificationHaptic = 1526

    case remoteCameraShutterBurstBeginHaptic = 1527

    case remoteCameraShutterBurstEndHaptic = 1528

    case workoutPausedHaptic = 1529

    case workoutResumedHaptic = 1530

    case goToSleepHaptic = 1531

    case warsawHaptic = 1532

    case autoUnlockHaptic = 1533

    case alertActivityFriendsGoalAttainedHaptic = 1534

    case alertSpartanConnectingHaptic = 1535

    case alertSpartanConnectingLowLatencyHaptic = 1536

    case alertSpartanConnectedLowLatencyHaptic = 1537

    case alertSpartanDisconnectedLowLatencyHaptic = 1538

    case accessScanCompleteHaptic = 1543

    case buddyMigrationStartHaptic = 1544

    case sOSFallDetectionPromptHaptic = 1545

    case sOSEmergencyContactTextPromptHaptic = 1546

    case workoutStartAutodetect = 1547

    case workoutCompleteAutodetect = 1548

    case workoutPausedAutoDetect = 1549

    case workoutResumedAutoDetect = 1550

    case workoutPaceAbove = 1551

    case workoutPaceBelow = 1552

    case walkieTalkieReceiveStartHaptic = 1553

    case walkieTalkieReceiveEndHaptic = 1554

    case alertHealthHaptic = 1555

    case multiwayJoin = 1556

    case multiwayLeave = 1557

//    case multiwayInvitation = 1558

    case _3rdPartyCriticalHaptic = 1559

    case alert1stPartyHaptic = 1560

    case healthNotificationUrgent = 1561

    case sirenCountdownMajorHaptic = 1563

    case sirenCountdownMinorHaptic = 1564

    case doorbellHaptic = 1566

    case systemNotificationHaptic = 1567

    case sOSFallDetectionPromptEscalationHaptic = 1568

    case healthReadingCompleteHaptic = 1570

    case healthReadingFailHaptic = 1571

    case headphoneAudioExposureLimitExceeded = 1572

    case screenCapture = 1573

    case pushToTalkJoined = 1576

    case pushToTalkLeft = 1577

    case pushToTalkUnmute = 1578

    case pushToTalkMute = 1579

    case pushToTalkUnmuteFail = 1580

    case intervalEnded = 1582

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
        case 1004: return "SentMessage"
        case 1006: return "low_power"
        case 1008: return "sms-received2"
        case 1009: return "sms-received3"
        case 1010: return "sms-received4"
        case 1013: return "sms-received5"
        case 1014: return "sms-received6"
        case 1015: return "sms-received1"
        case 1016: return "tweet_sent"
        case 1017: return "alarm"
        case 1018: return "Swish"
        case 1020: return "Anticipate"
        case 1021: return "Bloom"
        case 1022: return "Calypso"
        case 1023: return "Choo_Choo"
        case 1024: return "Descent"
        case 1025: return "Fanfare"
        case 1026: return "Ladder"
        case 1027: return "Minuet"
        case 1028: return "News_Flash"
        case 1029: return "Noir"
        case 1030: return "Sherwood_Forest"
        case 1031: return "Spell"
        case 1032: return "Suspense"
        case 1033: return "Telegraph"
        case 1034: return "Tiptoes"
        case 1035: return "Typewriters"
        case 1036: return "Update"
        case 1050: return "ussd"
        case 1051: return "SIMToolkitCallDropped"
        case 1052: return "SIMToolkitGeneralBeep"
        case 1053: return "SIMToolkitNegativeACK"
        case 1054: return "SIMToolkitPositiveACK"
        case 1055: return "SIMToolkitSMS"
        case 1060: return "WebcamStart"
        case 1070: return "ct-busy"
        case 1071: return "ct-congestion"
        case 1072: return "ct-path-ack"
        case 1073: return "ct-error"
        case 1075: return "ct-keytone2"
        case 1103: return "Tink"
        case 1105: return "Tock"
        case 1107: return "RingerChanged"
        case 1108: return "photoShutter"
        case 1109: return "shake"
        case 1110: return "jbl_begin"
        case 1111: return "jbl_confirm"
        case 1112: return "jbl_cancel"
        case 1115: return "jbl_ambiguous"
        case 1116: return "jbl_no_match"
        case 1117: return "begin_record"
        case 1118: return "end_record"
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
        case 1152: return "vc~ended"
        case 1153: return "ct-call-waiting"
        case 1154: return "vc~ringing"
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
        case 1258: return "short_double_low"
        case 1259: return "middle_9_short_double_low"
        case 1260: return "camera_timer_final_second"
        case 1261: return "camera_timer_countdown"
        case 1262: return "health_notification"
        case 1265: return "multiway_invitation"
        case 1301: return "ReceivedMessage"
        case 1302: return "new-mail"
        case 1303: return "mail-sent"
        case 1305: return "lock"
        case 1306: return "key_press_click"
        case 1340: return "PINEnterDigit_AX"
        case 1341: return "PINDelete_AX"
        case 1342: return "PINSubmit_AX"
        case 1343: return "PINUnexpected"
        case 1344: return "PINEnterDigit"
        case 1345: return "PINDelete"
        case 1361: return "connect_power"
        case 1364: return "MicMute"
        case 1365: return "MicUnmute"
        case 1366: return "MicUnmuteFail"
        case 1367: return "ScreenSharingStarted"
        case 1368: return "MediaPaused"
        case 1369: return "MediaHandoff"
        case 1370: return "NavigationGenericManeuver"
        case 1394: return "payment_success"
        case 1395: return "payment_failure"
        case 1396: return "acknowledgment_sent"
        case 1397: return "acknowledgment_received"
        case 1398: return "nfc_scan_failure"
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
        case 1444: return "Notification_Haptic"
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
        case 1495: return "ET_BeginNotification_Salient_Haptic"
        case 1496: return "Alert_Calendar_Salient_Haptic"
        case 1499: return "Alert_ReminderDue_Salient_Haptic"
        case 1500: return "Notification_Salient_Haptic"
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
        case 1556: return "MultiwayJoin"
        case 1557: return "MultiwayLeave"
        case 1558: return "MultiwayInvitation"
        case 1559: return "3rd_Party_Critical_Haptic"
        case 1560: return "Alert_1stParty_Haptic"
        case 1561: return "HealthNotificationUrgent"
        case 1563: return "Siren_Countdown_Major_Haptic"
        case 1564: return "Siren_Countdown_Minor_Haptic"
        case 1566: return "Doorbell_Haptic"
        case 1567: return "System_Notification_Haptic"
        case 1568: return "SOSFallDetectionPromptEscalation_Haptic"
        case 1570: return "HealthReadingComplete_Haptic"
        case 1571: return "HealthReadingFail_Haptic"
        case 1572: return "HeadphoneAudioExposureLimitExceeded"
        case 1573: return "ScreenCapture"
        case 1576: return "PushToTalkJoined"
        case 1577: return "PushToTalkLeft"
        case 1578: return "PushToTalkUnmute"
        case 1579: return "PushToTalkMute"
        case 1580: return "PushToTalkUnmuteFail"
        case 1582: return "IntervalEnded"
        case 1583: return "IntervalUpcoming"
        default: return ""
        }
    }
}
