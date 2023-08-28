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
