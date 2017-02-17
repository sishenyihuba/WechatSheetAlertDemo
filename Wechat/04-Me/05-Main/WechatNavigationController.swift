//
//  WechatNavigationController.swift
//  Wechat
//
//  Created by daixianglong on 2017/2/16.
//  Copyright © 2017年 daixianglong. All rights reserved.
//

import UIKit

class WechatNavigationController: UINavigationController {

    override func awakeFromNib() {
        super.awakeFromNib()
        UIApplication.shared.statusBarStyle = .lightContent
        navigationBar.barTintColor = UIColor(red: 59/255, green: 59/255, blue: 59/255, alpha: 1.0)
        navigationBar.tintColor = UIColor.white
        navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
//        let blurBackView = UIView()
//        blurBackView.frame = CGRect(x: 0, y: -20, width: UIScreen.main.bounds.width, height: 64)
//        let gradintLayer = CAGradientLayer()
//        gradintLayer.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 64)
//        gradintLayer.colors = [
//            UIColor.hexInt(0x040012).withAlphaComponent(0.76).cgColor,
//            UIColor.hexInt(0x040012).withAlphaComponent(0.28).cgColor
//        ]
//        gradintLayer.startPoint = CGPoint(x: 0, y: 0)
//        gradintLayer.endPoint = CGPoint(x: 0, y: 1.0)
//        blurBackView.layer.addSublayer(gradintLayer)
//        blurBackView.isUserInteractionEnabled = false
//        blurBackView.alpha = 0.5
//        
//        // 设置导航栏样式
//        navigationBar.barStyle = .black
//        navigationBar.insertSubview(blurBackView, at: 0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
