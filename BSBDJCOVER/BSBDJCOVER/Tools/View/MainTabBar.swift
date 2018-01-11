//
//  MainTabBar.swift
//  BSBDJCOVER
//
//  Created by Smart-AI on 11/01/2018.
//  Copyright © 2018 Smart-AI. All rights reserved.
//

import UIKit

class MainTabBar: UITabBar {

    lazy var publishButton : UIButton = {
        let button = UIButton(type: .custom)
        button.setBackgroundImage(UIImage(named:"tabBar_publish_icon"), for: .normal)
        button.setBackgroundImage(UIImage(named:"tabBar_publish_click_icon"), for: .highlighted)
        button.frame = CGRect(x:0, y:0,width:40,height:40)
        button.addTarget(self, action: #selector(clickPublishButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(publishButton)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if zc_height > kTabBarHeight {
            zc_height = kTabBarHeight
        }
        
        let btnW = zc_width / 5
        let btnH = zc_height
        let btnY: CGFloat = 0
        var index: CGFloat = 0
        publishButton.center = zc_center
        for view in subviews {
            if view.isKind(of: NSClassFromString("UITabBarButton")!) {
                let buttonX = (index < 2) ? index * btnW : (index + 1) * btnW
                view.frame = CGRect(x: buttonX, y: btnY, width: btnW, height: btnH)
                index += 1
            }
        }
    }
}

extension MainTabBar {
    @objc fileprivate func clickPublishButton() {
        let publishVC = PublishViewController()
        UIApplication.shared.keyWindow?.rootViewController?.present(publishVC, animated: false, completion: nil)
    }
}


