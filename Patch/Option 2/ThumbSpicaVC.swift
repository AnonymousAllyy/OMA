//
//  ThumbSpicaVC.swift
//  Patch
//
//  Created by Ally♥ on 10/25/17.
//  Copyright © 2017 Huntington University. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ThumbSpicaVC: UIViewController {

    var playerController = AVPlayerViewController()
    var player:AVPlayer?
    
    
    @IBAction func videoClick(_ sender: Any) {
        self.present(self.playerController, animated: true, completion: {  self.playerController.player?.play()})
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let videoString:String? = Bundle.main.path(forResource: "Cat", ofType: ".mp4")
        if let url = videoString {
            let videoURL = NSURL(fileURLWithPath: url)
            self.player = AVPlayer(url: videoURL as URL)
            self.playerController.player = self.player
        }
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
