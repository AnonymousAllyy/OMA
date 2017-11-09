//
//  SplintVC.swift
//  Patch
//
//  Created by Ally on 10/20/17.
//  Copyright © 2017 Huntington University. All rights reserved.
//

import UIKit

class SplintViewController: UIViewController {

    @IBOutlet weak var splintNameLabel: UILabel!
    @IBOutlet weak var purposeLabel: UILabel!
    
    var splintName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        splintNameLabel.text = splints[myIndex]
        purposeLabel.text = purpose[myIndex]
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
