//
//  UIView+Extension.swift
//  BSBDJCOVER
//
//  Created by Smart-AI on 11/01/2018.
//  Copyright © 2018 Smart-AI. All rights reserved.
//

import UIKit

extension UIView {
    public func isShowingnKeyWindow() -> Bool {
        guard let keywindow = UIApplication.shared.keyWindow else {
            return false
        }
        
        let frame = keywindow.convert(self.frame, from: self.superview)
        
        let isIntersects = frame.intersects(keywindow.bounds)
        return isIntersects && !self.isHidden && self.alpha > 0 && self.window == keywindow
    }
}

extension UIView {
    var zc_x: CGFloat {
        get {
            return frame.origin.x
        }
        set {
            var tempFrame: CGRect = frame
            tempFrame.origin.x = newValue
            frame = tempFrame
        }
    }
    
    var zc_y:CGFloat {
        set {
            var tempFrame:CGRect = frame
            tempFrame.origin.y = newValue
            frame = tempFrame
        }
        get {
            return frame.origin.y
        }
    }
    
    var zc_height :CGFloat {
        get {
            return frame.size.height
        }
        
        set(newVal) {
            var tmpFrame:CGRect = frame
            tmpFrame.size.height = newVal
            frame = tmpFrame
        }
    }
    
    var zc_width:CGFloat {
        get {
            return frame.size.width
        }
        set(newVal) {
            var tmpFrame:CGRect = frame
            tmpFrame.size.width = newVal
            frame = tmpFrame
        }
    }
    
    var zc_right:CGFloat {
        get {
            return zc_x+zc_width
        }
        set (newVal){
            zc_x = newVal - zc_width
        }
    }
    
    var zc_bottom:CGFloat {
        get {
            return zc_y + zc_height
        }
        set(newVal) {
            zc_y = newVal - zc_height
        }
    }
    
    var zc_center: CGPoint {
        get {
            return CGPoint(x:bounds.width/2.0, y:bounds.height/2.0)
        }
        set {
            center = CGPoint(x:newValue.x, y:newValue.y)
        }
    }
}
