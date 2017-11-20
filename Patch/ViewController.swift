//
//  ViewController.swift
//  Patch
//
//  Created by Ally♥ on 9/15/17.
//  Copyright © 2017 Huntington University. All rights reserved.
//
//
//import UIKit
//
//class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, ExpandableHeaderViewDelegate {
//
//
//
//    @IBOutlet weak var tableView: UITableView!
//
//
//    var sections = [
//        Section(category: "Basic Orthosis", splints: ["Resting Hand", "Wrist Cock-Up", "Thumb Spica", "Dorsal Blocking", "Ulnar Gutter"], expanded: false),
//        Section(category: "Elbow (EO)", splints: ["EO 1", "EO 2", "EO 3"], expanded: false),
//        Section(category: "Wrist-Hand-Finger (WHFO)", splints: ["WHFO 1", "WHFO 2", "WHFO 3"], expanded: false),
//        Section(category: "Finger", splints: ["FO 1", "FO 2", "FO 3"], expanded: false),
//        Section(category: "Static Progressive", splints: ["SPO 1", "SPO 2", "SPO 3"], expanded: false)
//    ]
//
//    var splints = ["Resting Hand", "Wrist Cock-Up", "Thumb Spica", "Dorsal Blocking", "Ulnar Gutter", "EO 1", "EO 2", "EO 3"]
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return sections.count
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return sections[section].splints.count
//
//
//    }
//
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 44
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if (sections[indexPath.section].expanded) {
//            return 44
//
//        }
//        else {
//            return 0
//        }
//    }
//    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return 2
//    }
//
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let header = ExpandableHeaderView()
//        header.customInit(title: sections[section].category, section: section, delegate: self)
//        return header
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//       let cell = tableView.dequeueReusableCell(withIdentifier: "labelCell")!
//       cell.textLabel?.text = sections[indexPath.section].splints[indexPath.row]
//       return cell
//    }
//
//    func toggleSection(header: ExpandableHeaderView, section: Int) {
//        sections[section].expanded = !sections[section].expanded
//
//        for i in 0 ..< sections[section].splints.count {
//            tableView.reloadRows(at: [IndexPath(row: i, section: section)], with: .automatic)
//        }
//        tableView.endUpdates()
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
////
////
//    }
//
//
//
//
//    }



