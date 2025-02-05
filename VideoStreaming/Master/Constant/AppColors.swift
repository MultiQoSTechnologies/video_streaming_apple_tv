//  AppColors.swift

import Foundation
import UIKit

extension UIColor {
    
    static var appThemeColor: UIColor {
        return UIColor(named: "theam") ?? .red
    }
    
    static var genericEndingStrokeColor: UIColor {
        return UIColor(named: "genericEndingStroke") ?? .red
    }
    
    static var genericStartingStrokeColor: UIColor {
        return UIColor(named: "genericStartingStroke") ?? .red
    }
}
