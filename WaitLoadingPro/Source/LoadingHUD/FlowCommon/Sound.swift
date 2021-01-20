

import AVFoundation

public final class Sound {

    static func playAudio(_ audio: AVAudioPlayer, delay: TimeInterval) {
        audio.prepareToPlay()
        let time = DispatchTime.now() + Double(Int64(delay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
        DispatchQueue.main.asyncAfter(deadline: time) {
            audio.play()
        }
    }
}
