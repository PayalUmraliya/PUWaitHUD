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
        LoadingHud.showDefaultHUD(self.view,.dashed)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 30) {
            LoadingHud.dismissHUD()
        }
    }
}
