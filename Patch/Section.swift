//
//  Section.swift
//  Patch
//
//  Created by Ally♥ on 10/19/17.
//  Copyright © 2017 Huntington University. All rights reserved.
//

import Foundation

struct Section {
    var category: String!
    var splints: [String]!
    var expanded: Bool!
    
    init (category: String, splints: [String], expanded: Bool) {
        self.category = category
        self.splints = splints
        self.expanded = expanded
    }
}
