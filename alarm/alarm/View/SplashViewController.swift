//
//  SplashViewController.swift
//  alarm
//
//  Created by n00993 on 2016/09/14.
//  Copyright © 2016年 CYBIRD Co., Ltd. All rights reserved.
//

import UIKit


class SplashViewController: BaseViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageView.image = UIImage(named: "splash.png")
        self.transitionTopViewController()
    }
    
    func transitionTopViewController() {
        let splashDulation = 4.0
        UIView.animate(withDuration: 0.5, delay: splashDulation - 1.0 , options: .curveEaseInOut, animations: {
            //徐々に消える
            self.view.alpha = 0.0
        }) { (finish) in
            print("Go to Top View");
            
            //Top画面をWindowのrootにセットする
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let viewController = storyboard.instantiateInitialViewController()
            viewController?.view.alpha = 0.0
            UIApplication.shared.windows[0].rootViewController = viewController
            
            UIView.animate(withDuration: 0.5, animations: {
                //徐々に現れる
                viewController?.view.alpha = 1.0
            })
        }
    }
    
}
