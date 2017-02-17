//
//  TimeLineController.swift
//  Wechat
//
//  Created by daixianglong on 2017/2/16.
//  Copyright © 2017年 daixianglong. All rights reserved.
//

import UIKit

class TimeLineController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "朋友圈"
        setupBarButtonItems()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }


}

//MARK: - UI
extension TimeLineController {
    fileprivate func setupBarButtonItems() {
        let cameraBarItem = UIBarButtonItem(image: UIImage.init(named: "Camera"), style: .plain, target: self, action: #selector(TimeLineController.cameraDidTouch))
        self.navigationItem.rightBarButtonItem = cameraBarItem
    }
    
    func cameraDidTouch() {
        let sheetAlert = WechatSheetAlert(frame: UIScreen.main.bounds, titles: ["从手机相册选择","拍照", "视频"])
        sheetAlert.selectIndex = {
            [weak self] (index :Int) in
            switch index {
            case 0:
                //手机相册拉起
                print("从手机相册选择")
                break
            case 1:
                //拍照
                 print("拍照")
                break
            case 2:
            //小视频走起
                 print("小视频")
            break
            default:
                break
            }
            sheetAlert.hiddenSheet()
        }
        self.navigationController?.tabBarController?.view.addSubview(sheetAlert)
    }
}
