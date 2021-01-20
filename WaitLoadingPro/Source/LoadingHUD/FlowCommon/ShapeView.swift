

import UIKit

open class ShapeView: UIView {
    open var shapeLayer: CAShapeLayer {
        return layer as! CAShapeLayer
    }

    /// A sublayer which can be used to apply a gradient fill to `self`.
    open var gradientLayer: CAGradientLayer? {
        set {
            // Remove old gradient layer
            if let gradientLayer = gradientLayer {
                gradientLayer.removeFromSuperlayer()
            }
            // Replace old gradient with new one
            if let newGradientLayer = newValue {
                layer.addSublayer(newGradientLayer)
            }
        }

        get {
            return layer.sublayers?.first(where: { $0 is CAGradientLayer }) as? CAGradientLayer
        }
    }

    public func addGradient(type: CAGradientLayerType, startPoint: CGPoint, endPoint: CGPoint, stops: [(color: CGColor, location: NSNumber)]) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = shapeLayer.bounds
        self.gradientLayer = gradientLayer


        let mask = CAShapeLayer()
        mask.path = shapeLayer.path
        mask.fillColor = UIColor.black.cgColor
        mask.strokeColor = nil

        gradientLayer.startPoint = startPoint
        gradientLayer.endPoint = endPoint
        gradientLayer.colors = stops.map { $0.color }
        gradientLayer.locations = stops.map { $0.location }
        gradientLayer.type = type
        gradientLayer.frame = shapeLayer.bounds
        gradientLayer.mask = mask
    }

    open var path: CGPath? {
        get {
            return shapeLayer.path
        }
        set {
            shapeLayer.path = newValue
        }
    }

    override open class var layerClass: AnyClass {
        return CAShapeLayer.self
    }
}
