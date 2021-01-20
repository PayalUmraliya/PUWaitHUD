

import UIKit

open class TextView: UILabel {
    open var textLayer: CATextLayer {
        return layer as! CATextLayer
    }

    override open class var layerClass: AnyClass {
        return CATextLayer.self
    }
}
