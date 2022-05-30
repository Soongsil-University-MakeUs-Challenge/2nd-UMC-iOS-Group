//
//  VideoPlayerView.swift
//  Catstagram
//
//  Created by csh on 2022/05/30.
//

import UIKit
import AVKit

class VideoPlayerView: UIView {
    
    var playerLayer: AVPlayerLayer? // 픒레이어의 layer마다 다른 크기 담당
    var playerLooper: AVPlayerLooper? // 플레이어에 loop 담당. 반복 재생.
    var queuePlayer: AVQueuePlayer? // 플레이어에 순서. 먼저 들어오는 걸 먼저 재생.
    var urlStr: String // 영상 url
    
    init(frame: CGRect, urlStr: String) {
        self.urlStr = urlStr
        super.init(frame: frame)
        
        let videoFileURL = Bundle.main.url(forResource: urlStr, withExtension: "mp4")!
        let playItem = AVPlayerItem(url: videoFileURL)
        
        self.queuePlayer = AVQueuePlayer(playerItem: playItem)
        playerLayer = AVPlayerLayer()
        
        playerLayer!.player = queuePlayer
        playerLayer!.videoGravity = .resizeAspectFill
        
        self.layer.addSublayer(playerLayer!)
        
        playerLooper = AVPlayerLooper(player: queuePlayer!, templateItem: playItem)
        queuePlayer!.play()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func cleanup(){
        queuePlayer?.pause()
        queuePlayer?.removeAllItems()
        queuePlayer = nil
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer!.frame = bounds
    }
}

