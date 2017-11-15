//
//  SearchTableViewController.swift
//  Patch
//
//  Created by Ally♥ on 11/9/17.
//  Copyright © 2017 Huntington University. All rights reserved.
//

import UIKit

var purpose = ["To help the resting Hand", "Purpose #2", "Support/Stabilize CMC or MPJ in opposition", "Support You", "?"]

var diagnosis = ["CMC/Basal", "Diag 2", "CMC/Basal Join OA, DeQuervains, MPJ Collateral Ligament Injury", "Hi There", "Fracture and soft tissue injuries of 5th digit. Fractures of the neck, shaft, and base of 4th/5th metacarpals"]

var position = ["position 1", "position 2", "CMC in mid-range opposition. MP in gentle flex. Able to oppose thumb to index finger. Can be hand or forearm based. Long-term CMC OA patient may perfer neoprene.", "position 4", "Forarm in neutral. Slight wrist extension (10-20 degrees), PIP and DIP joints (10-15 degrees( in flexion. MCP joints (50 degrees) in flexion."]

var molding = ["molding the resting hand", "molding the wrist cock up", "Trace the patients hand. Label appropriate bony landmarks. Cut out design and fit to patient hand/wrist. Trace design onto thermoplastic material", "molding dorsal blocking", "Trace the patients hand. Label arropriate bony landmarks. Cut out design and fit to patient hand/wrist. Trace design onto thermoplastic material"]

var final = ["checkpoints for 1", "2 checkpoints", "IP Flexion. Opposition. Ulnar/Radial Deviation. Comfort", "more", "more check points"]

var sections = [
    Section(category: "Basic Orthosis", splints: ["Resting Hand", "Wrist Cock-Up", "Thumb Spica", "Dorsal Blocking", "Ulnar Gutter"], expanded: true),
    Section(category: "Elbow (EO)", splints: ["EO 1", "EO 2", "EO 3"], expanded: true),
    Section(category: "Wrist-Hand-Finger (WHFO)", splints: ["WHFO 1", "WHFO 2", "WHFO 3"], expanded: true),
    Section(category: "Finger", splints: ["FO 1", "FO 2", "FO 3"], expanded: true),
    Section(category: "Static Progressive", splints: ["SPO 1", "SPO 2", "SPO 3"], expanded: true)
]

var myIndex = 0

var videos = ["/Users/Ally/Desktop/Cat.mp4", "/Users/Ally/Desktop/Patch/Patch/Splint2.mp4"]

var splints = ["Resting Hand", "Wrist Cock-Up", "Thumb Spica", "Dorsal Blocking", "Ulnar Gutter", "EO 1", "EO 2", "EO 3"]

class SearchTableViewController: UITableViewController, UISearchResultsUpdating, ExpandableHeaderViewDelegate {
    
    var filteredSplints = [String]()
    var searchController : UISearchController!
    var resultsController = UITableViewController()
    var splints = ["Resting Hand", "Wrist Cock-Up", "Thumb Spica", "Dorsal Blocking", "Ulnar Gutter", "EO 1", "EO 2", "EO 3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.resultsController.tableView.dataSource = self
        self.resultsController.tableView.delegate = self
        self.searchController = UISearchController(searchResultsController: self.resultsController)
        self.tableView.tableHeaderView = self.searchController.searchBar
        self.searchController.searchResultsUpdater = self
        definesPresentationContext = true
       
    }
    
    func updateSearchResults( for searchController: UISearchController) {
//        filter through splints
        self.filteredSplints = self.splints.filter { (splints:String) -> Bool in
            if splints.lowercased().contains(self.searchController.searchBar.text!.lowercased()) {
                return true
            } else {
                return false
            }
        }
//        update the results tableView
        self.resultsController.tableView.reloadData()
    }

   override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.tableView {
             return sections[section].splints.count
      //  return self.splints.count
        } else {
            // return sections[section].splints.count
            return self.filteredSplints.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
      //  let cell = UITableViewCell()
        if tableView == self.tableView {
              cell.textLabel?.text = sections[indexPath.section].splints[indexPath.row]
      //  cell.textLabel?.text = self.splints[indexPath.row]
        }
        else {
            cell.textLabel?.text = self.filteredSplints[indexPath.row]
        }
    
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (sections[indexPath.section].expanded) {
            return 44
            
        }
        else {
            return 0
        }
    }
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = ExpandableHeaderView()
        header.customInit(title: sections[section].category, section: section, delegate: self)
        return header
    }
    
    func toggleSection(header: ExpandableHeaderView, section: Int) {
        sections[section].expanded = !sections[section].expanded
        
        for i in 0 ..< sections[section].splints.count {
            tableView.reloadRows(at: [IndexPath(row: i, section: section)], with: .automatic)
        }
        tableView.endUpdates()
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
       tableView.deselectRow(at: indexPath, animated:true)
    }
    

}
