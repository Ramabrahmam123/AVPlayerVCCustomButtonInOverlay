//
//  ViewController.swift
//  AVPlayerVCCustomButtonInOverlay
//
//  Created by Paul Wadsworth on 12/07/2015.
//  Copyright (c) 2015 TapDigital Canada Inc. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class AVPlayerVC: AVPlayerViewController {
   @IBOutlet var overlay: UIView!
   
   let kVideo = "path in bundle to your video"
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      view.addSubview(overlay)

      let url = NSBundle.mainBundle().URLForResource(kVideo, withExtension: "mp4")
      player = AVPlayer(URL: url)
   }
   
   override func viewDidLayoutSubviews() {
      super.viewDidLayoutSubviews()
      
      overlay.frame = view.bounds
   }
   
   @IBAction func playBtnTapped(sender: AnyObject) {
      //println("PlayBtnTapped")
      player.play()
   }
}

