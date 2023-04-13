//
//  ViewController.swift
//  HW_another_Mask
//
//  Created by 曹家瑋 on 2023/4/13.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let michealJacksonImage = UIImage(named: "Micheal Jackson")
        let michealJacksonImageView = UIImageView(image: michealJacksonImage)
        
        // videoView 裝呈現影片的 layer，michealJacksonImageView 成為 videoView 的 mask， 呈現麥可傑克森的剪影
        let videoView = UIView(frame: CGRect(origin: CGPoint(x: 30, y: 100), size: michealJacksonImageView.frame.size))
        view.addSubview(videoView)
        
        let musicVideoPlayerUrl = URL(string: "https://www.googleapis.com/drive/v3/files/1uF8iA4ekeVeOr-_am-82xzfMOTqorO8P?alt=media&key=AIzaSyBM1JnQE_STOW0dNrz0G4YtQ1NyS6CbhBA")
        let videoPlayer = AVPlayer(url: musicVideoPlayerUrl!)
        let playerLayer = AVPlayerLayer(player: videoPlayer)
        playerLayer.frame = CGRect(origin: .zero, size: michealJacksonImageView.frame.size)
        playerLayer.videoGravity = .resizeAspectFill
        videoView.layer.addSublayer(playerLayer)
        videoView.mask = michealJacksonImageView
        videoPlayer.play()
    }


}

