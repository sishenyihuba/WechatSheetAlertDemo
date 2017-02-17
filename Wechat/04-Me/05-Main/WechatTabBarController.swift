//
//  WechatTabBarController.swift
//  Wechat
//
//  Created by daixianglong on 2017/2/16.
//  Copyright © 2017年 daixianglong. All rights reserved.
//

import UIKit

class WechatTabBarController: UITabBarController {

    override func awakeFromNib() {
        super.awakeFromNib()
        tabBar.tintColor = UIColor(red: 0, green: 190.0/255.0, blue: 12.0/255.0, alpha: 1.0)
        tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName : UIColor(red: 0, green: 190.0/255.0, blue: 12.0/255.0, alpha: 1.0)], for: .selected)
        self.selectedIndex = 2
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
