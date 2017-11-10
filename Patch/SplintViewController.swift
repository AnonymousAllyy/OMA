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
    @IBOutlet weak var diagnosisLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var finalLabel: UILabel!
    @IBOutlet weak var moldingLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        splintNameLabel.text = splints[myIndex]
        purposeLabel.text = purpose[myIndex]
        diagnosisLabel.text = diagnosis[myIndex]
        positionLabel.text = position[myIndex]
        finalLabel.text = final[myIndex]
        moldingLabel.text = molding[myIndex]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
