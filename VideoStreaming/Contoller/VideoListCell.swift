//
//  VideoListCell.swift
//  VideoStreaming
//
//  Created by MQS_2 on 04/02/25.
//

import UIKit

class VideoListCell: UICollectionViewCell {
    
    @IBOutlet weak var img: UIImageView!
    
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
            if self.isFocused {
                self.img.layer.borderWidth = 3
                self.img.layer.borderColor = UIColor.systemPink.cgColor
            } else {
                self.img.layer.borderWidth = 1
                self.img.layer.borderColor = UIColor.lightGray.cgColor
            }
    }
}
