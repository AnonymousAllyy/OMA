//
//  SearchTable.swift
//  Patch
//
//  Created by Eiten, Blake A on 10/30/17.
//  Copyright © 2017 Huntington University. All rights reserved.
//

import UIKit

class SearchTable: UITableViewController, ExpandableHeaderViewDelegate, UISearchResultsUpdating {

    var sections = [
        Section(category: "Arm", splints: ["Arm Splint 1", "Arm Splint 2", "Arm Splint 3"], expanded: false),
        Section(category: "Hand", splints: ["Hand Splint 1", "Hand Splint 2", "Hand Splint 3"], expanded: false),
        Section(category: "Leg", splints: ["Leg Splint 1", "Leg Splint 2", "LegSplint 3"], expanded: false)
    ]
    var results = [Section]()
    
    var searchController: UISearchController!
    var resultsController = UITableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.resultsController.tableView.dataSource = self
        self.resultsController.tableView.delegate = self
        
        self.searchController = UISearchController(searchResultsController: self.resultsController)
        self.tableView.tableHeaderView = self.searchController.searchBar
        self.searchController.searchResultsUpdater = self
        
        // fix at 8:00
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        self.results = self.sections.filter { (splint:Section) -> Bool in
            return true
        }
        self.resultsController.tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].splints.count
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
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /*
        let cell = tableView.dequeueReusableCell(withIdentifier: "labelCell")!
        cell.textLabel?.text = sections[indexPath.section].splints[indexPath.row]
        return cell
         */
        let cell = UITableViewCell()
        
        cell.textLabel?.text = self.sections[indexPath.row].splints[indexPath.row]
        
        return cell
    }
 
    func toggleSection(header: ExpandableHeaderView, section: Int) {
        sections[section].expanded = !sections[section].expanded
        
        for i in 0 ..< sections[section].splints.count {
            tableView.reloadRows(at: [IndexPath(row: i, section: section)], with: .automatic)
        }
        tableView.endUpdates()
    }
}
