//
//  UIViewController+Extension.swift
//  SetupApp
//
//  Created by MultiQoS on 05/04/2021.
//  Copyright © 2021. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    class var storyboardID : String {
        return "\(self)"
    }
    
    static func instantiateFrom(appStoryboard: AppStoryboard<UIViewController>) -> Self? {
        return appStoryboard.viewController(viewControllerClass: self) as? Self
    }
    
    
    func showController(vc:UIViewController,presentationStyle:UIModalPresentationStyle = .fullScreen,transitionStyle:UIModalTransitionStyle = .crossDissolve) {
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = presentationStyle
        nav.modalTransitionStyle = transitionStyle
        self.present(nav, animated: true, completion: nil)
    }
    
    func getViewControllerFromTabBar<T: UIViewController>(_ vc: T.Type) -> T? {
        let arrCnt = self.tabBarController?.viewControllers ?? []
        for cnt in arrCnt {
            if cnt is UINavigationController {
                let arrObj = (cnt as! UINavigationController).viewControllers
                for obj in arrObj {
                    if obj.isKind(of: vc.classForCoder()) {
                        return obj as? T
                    }
                }
            }
        }
        return nil
    }
    
    func getViewControllerFromNavigation<T: UIViewController>(_ vc: T.Type) -> T? {
        var arrCnt : [UIViewController] = []
        if self is UINavigationController{
            arrCnt = (self as? UINavigationController)?.viewControllers ?? []
        }else{
            arrCnt = self.navigationController?.viewControllers ?? []
        }
        for obj in arrCnt {
            if obj.isKind(of: vc.classForCoder()) {
                return obj as? T
            }
        }
        return nil
    }
    
    func clearNavigationBar() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.backgroundColor = .clear
        let attrs: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 12)
        ]
        self.navigationController?.navigationBar.barTintColor = .white
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.titleTextAttributes = attrs
    }

}

@nonobjc extension UIViewController {
    func add(_ child: UIViewController, frame: CGRect? = nil, parentView: UIView? = nil) {
        addChild(child)

        if let frame = frame {
            child.view.frame = frame
        }

        if let `parentView` = parentView {
            parentView.addSubview(child.view)
        }else {
            view.addSubview(child.view)
        }
        
        child.didMove(toParent: self)
    }

    func remove() {
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
}
