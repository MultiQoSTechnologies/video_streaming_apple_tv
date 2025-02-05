//
//  VideoPlayerVC.swift
//  VideoStreaming
//
//  Created by MQS_2 on 04/02/25.
//

import UIKit
import AVKit

class VideoPlayerVC: UIViewController {
    
    var videoInfo: MDLVideoInfo?
    var player: AVPlayer?
    var playerLayer: AVPlayerLayer?
    var playerItemObserver: NSKeyValueObservation?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialization()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.player?.play()
    }
    
    
    //MARK: - Memory management methods -
    deinit {
        print("### deinit -> \(self.className)")
    }
    
}

//MARK: - initialization -
extension VideoPlayerVC {
    private func initialization() {
        
        guard let videoInfo = videoInfo,
              let videoStr = videoInfo.vidoeUrl,
              let url = URL(string: videoStr) else {
            print("Video file not found.")
            return
        }
        
        CGCDMainThread.async {
            self.playVideo(url: url)
        }
    }
    
    func playVideo(url: URL) {
        // Create an AVPlayer with the URL
        player = AVPlayer(url: url)
        
        // Create an AVPlayerLayer
        playerLayer = AVPlayerLayer(player: player)
        playerLayer?.videoGravity = .resizeAspect
        
        // Set the frame and add the player layer to the view
        playerLayer?.frame = view.frame
        if let playerLayer = playerLayer {
            view.layer.addSublayer(playerLayer)
        }
        
        // Observe the status of the player item
        if let playerItem = player?.currentItem {
            playerItemObserver = playerItem.observe(\.status, options: [.initial, .new]) { [weak self] (item, change) in
                self?.playerItemStatusDidChange(status: item.status)
            }
        }
        // Start playing the video
        player?.play()
    }
    
    private func playerItemStatusDidChange(status: AVPlayerItem.Status) {
        switch status {
        case .readyToPlay:
            print("Player item is ready to play.")
            self.player?.play()
        case .failed:
            print("Player item failed.")
        case .unknown:
            print("Player item status is unknown.")
        @unknown default:
            print("Player item status is unknown.")
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // Update player layer frame on layout changes
        playerLayer?.frame = view.frame
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        // Update player layer frame on orientation changes
        coordinator.animate(alongsideTransition: { _ in
            self.playerLayer?.frame = self.view.frame
        }, completion: nil)
    }
}

//MARK: - Action Events -
extension VideoPlayerVC{
    
    @IBAction private func btnMute(sender: UIButton) {
        
    }
    
}
