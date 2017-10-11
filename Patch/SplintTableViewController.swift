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
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        let product1 = Product()
//        let product2 = Product()
//        let product3 = Product()
//        let product4 = Product()
//
//        product1.name = "1907 Wall Set"
//        product1.productImage = "phone-fullscreen1"
//        product1.cellImage = "image-cell1"
//
//        product2.name = "1921 Dial Phone"
//        product2.productImage = "phone-fullscreen2"
//        product2.cellImage = "image-cell2"
//
//        product3.name = "1937 Desk Set"
//        product3.productImage = "phone-fullscreen3"
//        product3.cellImage = "image-cell3"
//
//        product4.name = "1984 Motorola Portable Wall"
//        product4.productImage = "phone-fullscreen4"
//        product4.cellImage = "image-cell4"
//
//        products = [product1, product2, product3, product4]
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "showProduct" {
//            let productVC = segue.destination as? ProductViewController
//
//            guard let cell = sender as? UITableViewCell,
//                let indexPath = tableView.indexPath(for: cell) else {
//                    return
//
//            }
//            productVC?.product = products?[indexPath.row]
//        }
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
//    {
//        if let p = products //checking if productNames exists
//        {
//            return p.count //returns # of items in the array
//        }
//        return 0 //needed to return an int if productname doesnt exists
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
//    {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
//        let product = products?[indexPath.row] //set the product name
//
//        if let p = product
//        {
//            cell.textLabel?.text = p.name
//            if let i = p.cellImage {
//                cell.imageView?.image = UIImage(named: i)
//            }
//
//        }
//
//
//        return cell //returns created cell
//    }
    
    
}
