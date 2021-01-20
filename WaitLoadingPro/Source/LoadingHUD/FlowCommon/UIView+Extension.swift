

import UIKit

extension UIView {
    func setTransform(scaleX: CGFloat, scaleY: CGFloat, rotationAngle: CGFloat) {
        var transform = CGAffineTransform.identity
        transform = transform.concatenating(CGAffineTransform(scaleX: scaleX, y: 1.0))
        transform = transform.concatenating(CGAffineTransform(scaleX: 1.0, y: scaleY))
        transform = transform.concatenating(CGAffineTransform(rotationAngle: rotationAngle))
        self.transform = transform
    }
}
