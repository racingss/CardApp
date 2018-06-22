//
//  Categories.swift
//  Naomiou
//
//  Created by Jeffery Xu on 22/06/2018.
//  Copyright © 2018 Jeffery Xu. All rights reserved.
//

import Foundation

struct Categories : Codable {
    var category:[Category]?
    var categorybyAge:[Category]?
    
    init(category:[Category], categorybyAge:[Category]) {
        self.category = category
        self.categorybyAge = categorybyAge
    }
    
    func getCategory() -> [Category] {
        return self.category!
    }
    
    func getCategorybyAge() -> [Category] {
        return self.categorybyAge!
    }
}
