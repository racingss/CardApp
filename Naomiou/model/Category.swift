//
//  CategoryDS.swift
//  data model for category
//  such as Animal, Traffic, Fruit..
//  Category scroll view shows on 2nd row of whole table view
//  Naomiou
//
//  Created by Jeffery Xu on 15/06/2018.
//  Copyright © 2018 Jeffery Xu. All rights reserved.
//

import Foundation

struct Category : Codable{
    var name:String?
    var iconimg:String?
    
    init(name:String, iconimg:String) {
        self.name = name
        self.iconimg = iconimg
    }
}
