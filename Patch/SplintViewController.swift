//
//  SplintVC.swift
//  Patch
//
//  Created by Ally on 10/20/17.
//  Copyright © 2017 Huntington University. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation


class SplintViewController: UIViewController {
    
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var watchVideo: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var splintNameLabel: UILabel!
    @IBOutlet weak var purposeLabel: UILabel!    
    @IBOutlet weak var diagnosisLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var finalLabel: UILabel!
    @IBOutlet weak var moldingLabel: UILabel!
    
    var playerViewController = AVPlayerViewController()
    var playerView = AVPlayer()

    
    //All the commented out code on this viewcontroller is to play local video files, but note that when playing local files they will not play on the actual iphone only on here while testing. This is why I went with a webview player for the time being
 
 /*   @IBAction func videoClicked(_ sender: AnyObject)
    {
        playLocalVideo()
    }*/
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getVideo(videoCode: videos[myIndex])
        
//        scrollView.contentSize = CGSizeMake(self.view.frame.width, self.view.frame.height+100)

        splintNameLabel.text = splints[myIndex]
        purposeLabel.text = purpose[myIndex]
        diagnosisLabel.text = diagnosis[myIndex]
        positionLabel.text = position[myIndex]
        finalLabel.text = final[myIndex]
        moldingLabel.text = molding[myIndex]
        
     //   watchVideo.layer.cornerRadius = 4 //adds rounded corners to button
        
        
    }
    func getVideo(videoCode:String) {
        let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
        webView.loadRequest(URLRequest(url: url!))
    }
    
 /*   func playLocalVideo() {
        
        let fileURL = NSURL(fileURLWithPath: videos[myIndex])
        playerView = AVPlayer(url: fileURL as URL)
        playerViewController.player = playerView
        
        self.present(playerViewController, animated: true) {
            self.playerViewController.player?.play()
        }
    }*/


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
