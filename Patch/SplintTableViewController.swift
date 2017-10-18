//
//  SplintTableViewController.swift
//  Patch
//
//  Created by Ally Sowle on 10/11/17.
//  Copyright © 2017 Huntington University. All rights reserved.
//


import UIKit

class SplintTableViewController: UITableViewController {
    
    var splints: [Splints]? //optional array
//
    override func viewDidLoad() {
        super.viewDidLoad()
        let splint1 = Splints()
        let splint2 = Splints()
        let splint3 = Splints()
        let splint4 = Splints()
//
        splint1.name = "Volar Short Arm"
//        product1.productImage = "phone-fullscreen1"
//        product1.cellImage = "image-cell1"
//
        splint2.name = "Long Arm Posterior"
//        product2.productImage = "phone-fullscreen2"
//        product2.cellImage = "image-cell2"
//
       splint3.name = "Long Leg"
//        product3.productImage = "phone-fullscreen3"
//        product3.cellImage = "image-cell3"
//
        splint4.name = "Posterior Ankle"
//        product4.productImage = "phone-fullscreen4"
//        product4.cellImage = "image-cell4"
//
        splints = [splint1, splint2, splint3, splint4]
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "showSplints" {
            let productVC = segue.destination as? ViewController

            guard let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPath(for: cell) else {
                    return

            }
            splintVC?.splint = splints?[indexPath.row]
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if let s = splints //checking if productNames exists
        {
            return s.count //returns # of items in the array
        }
        return 0 //needed to return an int if productname doesnt exists
    }

/*    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SplintCell", for: indexPath)
       let splint = splints?[indexPath.row] //set the product name

  /*      if let s = splint
       {
            cell.textLabel?.text = s.name
            if let i = s.cellImage {
               cell.imageView?.image = UIImage(named: i)
            }

       }*/

    return cell //returns created cell
    }
    */
    
}

