//
// WechatSheetAlert.swift
//  Created by daixianglong on 17/2/06.
//  Copyright © 2017年 daixianglong<http://www.devashen.com>. All rights reserved.
//

import UIKit

class WechatSheetAlert: UIView {

    var bgkView:UIView! = nil
    var size:CGSize! = nil
    
    var selectIndex : ((_ index:Int)->())?
    
    init(frame: CGRect, titles:NSArray) {
        super.init(frame: frame)
        size = UIScreen.main.bounds.size
        self.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        let tap = UITapGestureRecognizer(target: self, action: #selector(hiddenSheet))
        self.addGestureRecognizer(tap)
        makeBaseUIWithTitles(titles: titles)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func makeBaseUIWithTitles(titles:NSArray) {
        
        bgkView = UIView.init(frame: CGRect(x: 0, y: size.height, width: size.width, height: CGFloat(titles.count) * 50 + 55))
        bgkView.backgroundColor = UIColor(red: 0xe9/255.0, green: 0xe9/255.0, blue: 0xe9/255.0, alpha: 1.0)
        self.addSubview(bgkView)
        
        var y = self.createBtnWithTitle(title: "取消", origin_y: bgkView.frame.size.height - 50, tag: -1) - 55
        for i in 0..<titles.count {
            y = self.createBtnWithTitle(title: titles[i] as! String, origin_y: y, tag: i)
        }
        
        UIView.animate(withDuration: 0.3) { 
            var frame = self.bgkView.frame
            frame.origin.y -= frame.size.height
            self.bgkView.frame = frame
        }
    }
    
    func createBtnWithTitle(title:String, origin_y:CGFloat, tag:NSInteger) -> CGFloat{
        let btn = UIButton(type: .custom)
        btn.setTitle(title, for: .normal)
        btn.frame = CGRect(x: 0, y: origin_y, width: size.width, height: 50)
        btn.backgroundColor = UIColor.white
        btn.tag = tag
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.addTarget(self, action: #selector(WechatSheetAlert.click(sender:)), for: .touchUpInside)
        bgkView.addSubview(btn)
        var y = origin_y
        y -= tag == -1 ? 0 : 50.4
        return y
        
    }
    
    func click(sender:UIButton) {
        if self.selectIndex != nil {
            self.selectIndex!(sender.tag)
        }
    }
    
    
    func hiddenSheet() {
        UIView.animate(withDuration: 0.3) { 
            var frame = self.bgkView.frame
            frame.origin.y += frame.size.height
            self.bgkView.frame = frame
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(300)) {
            self.removeFromSuperview()
        }
        
    }
    
}
