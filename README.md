# SystemSound

A Swift Library that makes swift-system-sound playback easy.

<!-- # Badges -->

[![Github issues](https://img.shields.io/github/issues/p-x9/swift-system-sound)](https://github.com/p-x9/swift-system-sound/issues)
[![Github forks](https://img.shields.io/github/forks/p-x9/swift-system-sound)](https://github.com/p-x9/swift-system-sound/network/members)
[![Github stars](https://img.shields.io/github/stars/p-x9/swift-system-sound)](https://github.com/p-x9/swift-system-sound/stargazers)
[![Github top language](https://img.shields.io/github/languages/top/p-x9/swift-system-sound)](https://github.com/p-x9/swift-system-sound/)

The system sound in `AudioToolBox` must be specified numerically, but it is not clear what that numerical value should sound like.
Therefore, I have made it possible to play sounds by specifying the sound name.
It was obtained by analyzing the system file.

The following table shows the correspondence between SystemSoundID and sound names.
[Table of SytemSoundID and Sound Name](./SystemSoundTable.md)

## Usage
### import

```swift
import SystemSound
```

### PlaySounds

```swift
AudioServicesPlaySystemSound(.smsSent(.sentMessage))
AudioServicesPlaySystemSound(.touchTone(.dtmfStar))
AudioServicesPlaySystemSound(.navigationPush)
```

## License
SystemSound is released under the MIT License. See [LICENSE](./LICENSE)
