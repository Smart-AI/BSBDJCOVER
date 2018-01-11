//
//  Common.swift
//  BSBDJCOVER
//
//  Created by Smart-AI on 11/01/2018.
//  Copyright © 2018 Smart-AI. All rights reserved.
//

import Foundation
import UIKit

let kCellTextMargin: CGFloat = 10
let kCellHeaderHeight: CGFloat = 65
let kCellFooterHeight: CGFloat = 54
let kCellIamgeMaxH: CGFloat = 1500
let kCellImageBreakHeight: CGFloat = 250
let kStatusBarHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
let iPhoneXHeight: CGFloat = 812
let kNavBarHeight:CGFloat = 44.0
let kTabBarHeight: CGFloat = (UIApplication.shared.statusBarFrame.size.height > 20.0 ? 83.0:49.0)
let kTopHeight = kStatusBarHeight + kNavBarHeight
let kScreenWidth = UIScreen.main.bounds.width
let kScreenHeight = UIScreen.main.bounds.height

enum ContentType: Int {
    case all = 1
    case picture = 10
    case word = 29
    case voice = 31
    case video = 41
}
