

import Foundation
import UIKit

public extension CAMediaTimingFunction {
    static let linear = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
    static let easeIn = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeIn)
    static let easeOut = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeOut)
    static let easeInEaseOut = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)

    var reversed: CAMediaTimingFunction {
        let (c1, c2) = controlPoints
        let x1 = Float(1 - c2.x)
        let y1 = Float(1 - c2.y)
        let x2 = Float(1 - c1.x)
        let y2 = Float(1 - c1.y)
        return CAMediaTimingFunction(controlPoints: x1, y1, x2, y2)
    }

    var controlPoints: (CGPoint, CGPoint) {
        var c1: [Float] = [0, 0]
        var c2: [Float] = [0, 0]
        getControlPoint(at: 1, values: &c1)
        getControlPoint(at: 2, values: &c2)

        let c1x = CGFloat(c1[0])
        let c1y = CGFloat(c1[1])
        let c2x = CGFloat(c2[0])
        let c2y = CGFloat(c2[1])

        return (CGPoint(x: c1x, y: c1y), CGPoint(x: c2x, y: c2y))
    }
}
