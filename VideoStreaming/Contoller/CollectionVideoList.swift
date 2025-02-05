//
//  CollectionVideoList.swift
//  VideoStreaming
//
//  Created by MQS_2 on 04/02/25.
//

import UIKit
import AVKit

class CollectionVideoList: UICollectionView {
    
    var videos: [MDLVideoInfo] = MDLVideoInfo.videosList
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        initialize()
    }
    
    fileprivate func initialize() {
        self.keyboardDismissMode = .onDrag
        self.backgroundColor = .clear
        self.delegate = self
        self.dataSource = self
        self.reloadData()
    }
    
    override var preferredFocusedView: UIView? {
        return self.visibleCells.first
    }
    
}

//MARK: - Other Function -
extension CollectionVideoList {

    private func moveToVideoPlayer(item: MDLVideoInfo) {
        guard let view = self.viewController,
              let videoPlayerVC = VideoPlayerVC.instantiateFrom(appStoryboard: .main),
              let navigationController = view.navigationController else {
            return
        }
        
        videoPlayerVC.videoInfo = item
        navigationController.pushViewController(videoPlayerVC, animated: true)
    }
}

// MARK: - UICollectionView Delegate/Datasources -
extension CollectionVideoList: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return videos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: VideoListCell.identifier, for: indexPath) as? VideoListCell else {
            return collectionView.dummyCell
        }
        let item = videos[indexPath.row]

        cell.img.image = UIImage(named: item.thumbnail ?? "")
        //cell.img.loadImageFromUrl(item.thumbnail)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let item = videos[indexPath.row]
        
        
        guard
            let videoStr = item.vidoeUrl,
              let url = URL(string: videoStr) else {
            print("Video file not found.")
            return
        }
        
        // Create an AVPlayer
           let player = AVPlayer(url: url)
           
           // Create an AVPlayerViewController and set its player
           let playerViewController = AVPlayerViewController()
           playerViewController.player = player
           
           // Present the AVPlayerViewController
        self.viewController?.present(playerViewController, animated: true) {
               player.play()
           }
        //self.moveToVideoPlayer(item: item)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 420, height: 220)
    }
}

