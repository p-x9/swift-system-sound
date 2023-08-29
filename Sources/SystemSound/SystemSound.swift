import AudioToolbox

public func AudioServicesPlaySystemSound(_ systemSoundKey: SystemSoundKey) {
    AudioServicesPlaySystemSound(systemSoundKey.systemSoundId)
}

public func AudioServicesPlayAlertSound(_ systemSoundKey: SystemSoundKey) {
    AudioServicesPlayAlertSound(systemSoundKey.systemSoundId)
}

public func AudioServicesPlaySystemSoundWithCompletion(
    _ systemSoundKey: SystemSoundKey,
    _ inCompletionBlock: (() -> Void)?
) {
    AudioServicesPlaySystemSoundWithCompletion(
        systemSoundKey.systemSoundId,
        inCompletionBlock
    )
}

public func AudioServicesPlayAlertSoundWithCompletion(
_ systemSoundKey: SystemSoundKey,
_ inCompletionBlock: (() -> Void)?
) {
    AudioServicesPlayAlertSoundWithCompletion(
        systemSoundKey.systemSoundId,
        inCompletionBlock
    )
}
