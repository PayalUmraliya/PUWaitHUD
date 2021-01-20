import Foundation
import UIKit

class LoadingHud  : NSObject{
    
    static var bgview = UIView()
    static var activityView = ActivityIndicators().create(type: .dashed)
    static var lbl  = UILabel()
    
    
    class func showDefaultHUD(_ topview:UIView,_ typename :ActivityIndicatorType){
        bgview.removeFromSuperview()
        activityView?.stopAnimating()
        bgview.frame = CGRect.init(x: 0, y: 0, width: topview.frame.size.width, height: topview.frame.size.height)
        bgview.backgroundColor = UIColor.init(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.7)
        activityView = ActivityIndicators().create(type: typename) //ActivityIndicators.create(.dashed)
        activityView?.color = .clear
        activityView?.center = bgview.center
        activityView!.startAnimating()
        bgview.addSubview(activityView!)
        topview.addSubview(bgview)
    }
    
    class func dismissHUD(){
        DispatchQueue.main.async {
            bgview.removeFromSuperview()
        }
    }
    
    
}
