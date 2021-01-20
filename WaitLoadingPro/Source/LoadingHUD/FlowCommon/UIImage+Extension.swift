

import UIKit

extension UIImage {
    func resized(to size: CGSize) -> UIImage {
        let rect = CGRect(origin: .zero, size: size)
        let vertical = CGAffineTransform(a: 1, b: 0, c: 0, d: -1, tx: 0, ty: size.height)
        return UIGraphicsImageRenderer(size: size).image { _ in
            let ctx = UIGraphicsGetCurrentContext()
            ctx?.saveGState()
            ctx?.concatenate(vertical)
            draw(in: rect)
            ctx?.restoreGState()
            UIGraphicsEndImageContext()
        }
    }
}
