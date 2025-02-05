//
//  ExtensionUIImageView.swift
//
//  Created MultiQoS on 05/04/2021.
//  Copyright © 2021. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

extension UIImageView {
    
    func loadGif(name: String, completion:(() -> ())?) {
        
        DispatchQueue.global().async {
            
            if let image = UIImage.gif(name: name, completion: completion) {
                
                CGCDMainThread.async { [weak self] in
                    
                    guard let `self` = self else {
                        return
                    }
                    self.image = image
                }
            }
        }
    }
}

extension UIImageView {
    func loadImageFromUrl(_ strUrl : String?, isuser: Bool = true, _ completion: (() -> Void)? = nil)  {
        if strUrl?.isEmpty ?? false{
            self.image = UIImage(named: "logo")
        } else {
            self.sd_imageIndicator = SDWebImageActivityIndicator.gray
            self.sd_setImage(with: URL(string: strUrl ?? ""), placeholderImage: isuser ? UIImage(named: "user_placeholder") : UIImage(named: "image_placeholder"), options: .retryFailed) { image, error, type, url in
                if let block = completion {
                    block()
                }
                
                if let err = error {
                    AppLogs.debugPrint("loadImageFromUrl error = == \(String(describing: err))")
                }
            }
        }
    }
}
