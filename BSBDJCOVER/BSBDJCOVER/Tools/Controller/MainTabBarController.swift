//
//  MainTabBarController.swift
//  BSBDJCOVER
//
//  Created by Smart-AI on 11/01/2018.
//  Copyright © 2018 Smart-AI. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tabBar = UITabBarItem.appearance()
        let attrs_Normal = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 12), NSAttributedStringKey.foregroundColor: UIColor.gray]
        let attrs_Select = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 12), NSAttributedStringKey.foregroundColor: UIColor.darkGray]
        tabBar.setTitleTextAttributes(attrs_Normal, for: .normal)
        tabBar.setTitleTextAttributes(attrs_Select, for: .selected)
        setupUI()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension MainTabBarController {
    fileprivate func setupUI() {
        setValue(MainTabBar(), forKey: "tabBar")
        let vcArray:[UIViewController] = [EssenceViewController(),NewViewController(),FriendViewController(), MeViewController()]
        let titleArray = [("精华", "essence"), ("新帖", "new"), ("关注", "friendTrends"), ("我", "me")]
        for (index, vc) in vcArray.enumerated() {
            vc.tabBarItem.title = titleArray[index].0
            vc.tabBarItem.image = UIImage(named: "tabBar_\(titleArray[index].1)_icon")
            vc.tabBarItem.selectedImage = UIImage(named: "tabBar_\(titleArray[index].1)_click_icon")
            let nav = MainNavigationController(rootViewController:vc)
            addChildViewController(nav)
        }
    }
}
