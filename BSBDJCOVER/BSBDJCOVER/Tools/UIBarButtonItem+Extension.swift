//
//  UIBarButtonItem+Extension.swift
//  BSBDJCOVER
//
//  Created by Smart-AI on 11/01/2018.
//  Copyright © 2018 Smart-AI. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    convenience init(image:String, highImage:String, target:Any, action:Selector) {
        let button = UIButton(type: .custom)
        button.setBackgroundImage(UIImage(named:image), for: .normal)
        button.setBackgroundImage(UIImage(named:highImage), for: .selected)
        button.addTarget(target, action: action, for: .touchUpInside)
        button.sizeToFit()
        self.init(customView:button)
    }
    
    convenience init(title: String, fontSize:CGFloat, _ target: Any?, _ SEL:Selector) {
        let button = UIButton(type: .custom)
        button.setTitle(title, for: .normal)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.setTitleColor(UIColor.lightGray, for: .selected)
        button.addTarget(target, action: SEL, for: .touchUpInside)
        button.titleLabel?.font = UIFont.systemFont(ofSize: fontSize)
        self.init(customView:button)
    }
}
