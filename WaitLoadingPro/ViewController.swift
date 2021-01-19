//
//  ViewController.swift
//  WaitLoadingPro
//
//  Created by iMac on 24/12/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vwloader: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        showLoading(self.view,.dashed)
    }
}

func showLoading(_ vwname: UIView, _ typee: ActivityIndicatorType)
{
    hideLoading()
    let vw = UIView.init(frame: UIScreen.main.bounds)
    vw.tag = 99999
    vw.backgroundColor = UIColor.black.withAlphaComponent(0.5)
    let activityView = ActivityIndicators().create(type: typee)
    
    
    //let activityView = ActivityIndicators.create(typee)
    vw.addSubview(activityView!)
    activityView?.color = .clear
    activityView?.center = vw.center
    activityView!.startAnimating()
    vwname.addSubview(vw)
}

func hideLoading()
{
    UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.viewWithTag(99999)?.removeFromSuperview()
}
