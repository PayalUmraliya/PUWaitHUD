

import UIKit

@IBDesignable
public class QuarbitActivityIndicatorView: ActivityIndicatorView {
    private lazy var quarbit: QuarbitView = {
        let startView = QuarbitView(frame: .zero)
        startView.scale(to: frame.size)
        //The background color for this custom activity indicator should always be solid
        //Otherwise, the native ActivityIndicatorView animation will be visible
        startView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        return startView
    }()

    override var timeline: Timeline? {
        return QuarbitTimeline(view: quarbit, duration: 2, repeatCount: .greatestFiniteMagnitude)
    }
    
    public override func createView() -> UIView {
        return quarbit
    }
}
