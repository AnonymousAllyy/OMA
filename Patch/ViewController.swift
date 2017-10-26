//
//  ViewController.swift
//  Patch
//
//  Created by Ally♥ on 9/15/17.
//  Copyright © 2017 Huntington University. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, ExpandableHeaderViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var sections = [
        Section(category: "Arm", splints: ["Arm Splint 1", "Arm Splint 2", "Arm Splint 3"], expanded: false),
        Section(category: "Hand", splints: ["Hand Splint 1", "Hand Splint 2", "Hand Splint 3"], expanded: false),
        Section(category: "Leg", splints: ["Leg Splint 1", "Leg Splint 2", "Leg Splint 3"], expanded: false)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].splints.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (sections[indexPath.section].expanded) {
            return 44
            
        }
        else {
            return 0
        }
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 2
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = ExpandableHeaderView()
        header.customInit(title: sections[section].category, section: section, delegate: self)
        return header
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "labelCell")!
        cell.textLabel?.text = sections[indexPath.section].splints[indexPath.row]
        return cell
    }
    
    func toggleSection(header: ExpandableHeaderView, section: Int) {
        sections[section].expanded = !sections[section].expanded
        
        for i in 0 ..< sections[section].splints.count {
            tableView.reloadRows(at: [IndexPath(row: i, section: section)], with: .automatic)
        }
        tableView.endUpdates()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let simpleVC = SimpleVC()
        simpleVC.customInit(imageName: sections[indexPath.section].splints[indexPath.row])
        tableView.deselectRow(at: indexPath, animated:true)
        self.navigationController?.pushViewController(simpleVC, animated: true)
    }


    }



