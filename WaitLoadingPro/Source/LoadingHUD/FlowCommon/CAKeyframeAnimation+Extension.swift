

import Foundation
import UIKit

public extension CAKeyframeAnimation {
    var reversed: CAKeyframeAnimation {
        let reversed = CAKeyframeAnimation(keyPath: keyPath)
        reversed.keyTimes = keyTimes?.reversed().map { NSNumber(floatLiteral: 1.0 - $0.doubleValue) }
        reversed.values = values?.reversed()
        reversed.timingFunctions = timingFunctions?.reversed().map { $0.reversed }
        reversed.duration = duration
        return reversed
    }
}
