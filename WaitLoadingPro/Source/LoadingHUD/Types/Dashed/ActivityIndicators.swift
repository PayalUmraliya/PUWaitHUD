//
//  ActivityIndicators.swift
//  ActivityIndicatorView
//
//  Created by Travis on 2020-10-19.
//  Copyright © 2020 Flow. All rights reserved.
//

import UIKit

public enum ActivityIndicatorType: CaseIterable {

    case dashed

    case infinity

    case quarbit

    case ripley

}

public class ActivityIndicators {
    public class func create(_ type: ActivityIndicatorType) -> ActivityIndicatorView? {
        let frame = CGRect(x: 0, y: 0, width: 70, height: 70)
        var indicator: ActivityIndicatorView?
        indicator?.color = .clear
        indicator?.layer.masksToBounds = false
        switch type {
        case .dashed:
            indicator = DashedActivityIndicatorView(frame: frame)
        case .infinity:
            indicator = InfinityActivityIndicatorView(frame: frame)
        case .quarbit:
            indicator = QuarbitActivityIndicatorView(frame: frame)
        case .ripley:
            indicator = RipleyActivityIndicatorView(frame: frame)
        }

        indicator?.layer.cornerRadius = 5.0
        return indicator
    }
}
