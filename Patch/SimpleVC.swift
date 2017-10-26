//
//  SimpleVC.swift
//  Patch
//
//  Created by Ally♥ on 10/26/17.
//  Copyright © 2017 Huntington University. All rights reserved.
//

import UIKit

class SimpleVC: UIViewController {
    
    var imageName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = imageName
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func customInit(imageName: String) {
        self.imageName = imageName
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
