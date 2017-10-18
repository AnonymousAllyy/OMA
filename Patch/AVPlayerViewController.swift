//
//  AVPlayerViewController.swift
//  Patch
//
//  Created by Ally on 10/18/17.
//  Copyright © 2017 Huntington University. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class AVPlayerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destination = segue.destination as!
        AVPlayerViewController
        let url = URL(string:
            "http://www.ebookfrenzy.com/ios_book/movie/movie.mov")
        
        if let movieURL = url {
            destination.player = AVPlayer(url: movieURL)
        }
    }

  

}
