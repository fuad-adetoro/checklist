//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Frederico on 20/01/2017.
//  Copyright © 2017 Fuad Adetoro. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject {
    var text = ""
    var checked = false
    
    func toggleChecked(){
        checked = !checked
    }
}
