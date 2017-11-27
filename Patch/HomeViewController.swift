//
//  HomeViewController.swift
//  Patch
//
//  Created by Ally♥ on 11/27/17.
//  Copyright © 2017 Huntington University. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var enterButton: UIButton!
    @IBOutlet weak var aboutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        enterButton.layer.cornerRadius = 4 //adds rounded corners to button
        aboutButton.layer.cornerRadius = 4 //adds rounded corners to button

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
}
