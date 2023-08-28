import AudioToolbox

public func AudioServicesPlaySystemSound(_ systemSoundKey: SystemSoundKey) {
    AudioServicesPlaySystemSound(SystemSoundID(systemSoundKey.rawValue))
}

public func AudioServicesPlayAlertSound(_ systemSoundKey: SystemSoundKey) {
    AudioServicesPlayAlertSound(SystemSoundID(systemSoundKey.rawValue))
}

public func AudioServicesPlaySystemSoundWithCompletion(
    _ systemSoundKey: SystemSoundKey,
    _ inCompletionBlock: (() -> Void)?
) {
    AudioServicesPlaySystemSoundWithCompletion(
        SystemSoundID(systemSoundKey.rawValue),
        inCompletionBlock
    )
}

public func AudioServicesPlayAlertSoundWithCompletion(
_ systemSoundKey: SystemSoundKey,
_ inCompletionBlock: (() -> Void)?
) {
    AudioServicesPlayAlertSoundWithCompletion(
        SystemSoundID(systemSoundKey.rawValue),
        inCompletionBlock
    )
}
