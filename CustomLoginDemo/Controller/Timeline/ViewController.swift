//
//  ViewController.swift
//  CustomLoginDemo
//
//  Created by Christopher Ching on 2019-07-22.
//  Copyright © 2019 Christopher Ching. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

//    var videoPlayer:AVPlayer?
//
//    var videoPlayerLayer:AVPlayerLayer?
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()
        //ANIMATION STUFF
        imageView.alpha = 0

        titleLabel.text = " "
        var charIndex = 0.0
        let titleText = "Event Manager"
        for letter in titleText{
            print(0.1*charIndex)
            print(letter)
            Timer.scheduledTimer(withTimeInterval: 0.2*charIndex, repeats: false){(timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        // Set up video in the background
//        setUpVideo()
    }
    override func viewDidAppear(_ animated: Bool) {
        animateImage()
    }
    
    func setUpElements() {
        
        Utilities.styleFilledButton(signUpButton)
        Utilities.styleHollowButton(loginButton)
        
    }
    
//    func setUpVideo() {
//
//        // Get the path to the resource in the bundle
//        let bundlePath = Bundle.main.path(forResource: "loginbg", ofType: "mp4")
//
//        guard bundlePath != nil else {
//            return
//        }
//
        // Create a URL from it
//        let url = URL(fileURLWithPath: bundlePath!)
        
        // Create the video player item
//        let item = AVPlayerItem(url: url)
        
        // Create the player
//        videoPlayer = AVPlayer(playerItem: item)
        
        // Create the layer
//        videoPlayerLayer = AVPlayerLayer(player: videoPlayer!)
        
        // Adjust the size and frame
//        videoPlayerLayer?.frame = CGRect(x: -self.view.frame.size.width*1.5, y: 0, width: self.view.frame.size.width*4, height: self.view.frame.size.height)
        
//        view.layer.insertSublayer(videoPlayerLayer!, at: 0)
        
        // Add it to the view and play it
//        videoPlayer?.playImmediately(atRate: 0.3)
    
//        }
    
//MARK:-
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    func animateImage(){
        UIView.animate(withDuration: 1.5, delay: 0.75, options: [.transitionCurlUp], animations: {
            self.imageView.alpha = 1
            self.imageView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        }) { (completed) in
            
        }
    }
}

