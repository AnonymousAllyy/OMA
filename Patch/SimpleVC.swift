//
//  SimpleVC.swift
//  Patch
//
//  Created by Ally♥ on 10/26/17.
//  Copyright © 2017 Huntington University. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class SimpleVC: UIViewController {
    
    var playerController = AVPlayerViewController()
    var player:AVPlayer?
    
    @IBAction func playVideo(_ sender: Any) {
        self.present(self.playerController, animated: true, completion: {  self.playerController.player?.play()})
        
    }
    
    var imageName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let videoString:String? = Bundle.main.path(forResource: "Cat", ofType: ".mp4")
        if let url = videoString {
            let videoURL = NSURL(fileURLWithPath: url)
            self.player = AVPlayer(url: videoURL as URL)
            self.playerController.player = self.player
        }
        

        self.title = imageName //Set Split Name in Title of Application
    }

   
    
    func customInit(imageName: String) {
        self.imageName = imageName
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
