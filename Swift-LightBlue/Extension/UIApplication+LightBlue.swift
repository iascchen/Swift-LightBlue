//
//  UIApplication+LightBlue.swift
//  Swift-LightBlue
//
//  Created by Pluto Y on 4/20/16.
//  Copyright © 2016 Pluto-y. All rights reserved.
//

import UIKit

extension UIApplication {
    
    class func topViewController(viewController: UIViewController? = UIApplication.sharedApplication().keyWindow?.rootViewController) -> UIViewController? {
        if let nav = viewController as? UINavigationController {
            return topViewController(nav.visibleViewController)
        }
        if let tab = viewController as? UITabBarController {
            if let selected = tab.selectedViewController {
                return topViewController(selected)
            }
        }
        if let presented = viewController?.presentedViewController {
            return topViewController(presented)
        }
        
        return viewController
    }
}