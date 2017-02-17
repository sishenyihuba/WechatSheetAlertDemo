# WechatSheetAlertDemo
A elegant and WeuiStuff  sheetAlert for Wechat timeLine   微信朋友圈拍照菜单SheetAlert

![image](https://github.com/sishenyihuba/WechatSheetAlertDemo/blob/master/Images/WechatSheet.png)

**WechatSheet** is a custom view for showing sheetAlert in Wechat. It is written by Swift3.

## Featrue
![image](https://github.com/sishenyihuba/WechatSheetAlertDemo/blob/master/Images/WechatSheet.gif)

## Useage
It is very handy to use, just drag WechatSheetAlert.swift into your own project, user in as a common view! Code is like this:
```
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
```
 In the code above,We want to show a menu sheet like Wechat does,Cool!
 - Create WechatSheetAlert using frame and titles
 - add click event for sheet menu
 - add WechatSheetAlert into a superview what ever u want
 
 ##Contribute
 We welcome any contributions. If u have any issue ,please let me know.
 
 ##License
 Hero is available under the MIT license. See the LICENSE file for more info.
