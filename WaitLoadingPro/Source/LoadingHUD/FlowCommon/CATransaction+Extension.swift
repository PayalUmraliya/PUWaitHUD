

import UIKit

extension CATransaction {
    static public func suppressAnimations(actions: () -> Void) {
        begin()
        setAnimationDuration(0)
        actions()
        commit()
    }
}
