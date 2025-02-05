//
//  AppUIButton.swift
//  Tomato
//
//  Created by MultiQoS on 05/04/2021.
//  Copyright © 2021. All rights reserved.
//


import Foundation
import UIKit

class AppUIButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }
    
    private func setup() {
        
        //titleLabel?.font = UIFont.custom(name: .OpenSansSemibold, size: getAutoDimension(size: 16))
        
        //self.backgroundColor = .appWhite
        setCornerRadius(of: 2.0)
        setTitleColor(.white, for: .normal)
    }
}
