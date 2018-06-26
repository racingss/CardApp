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
    var categorybyNewArrivals:[Category]?
    
    init(category:[Category], categorybyAge:[Category], categorybyNewArrivals:[Category]) {
        self.category = category
        self.categorybyAge = categorybyAge
        self.categorybyNewArrivals = categorybyNewArrivals
    }
    
    func getCategory() -> [Category] {
        guard let category = self.category else {return []}
        return category
    }
    
    func getCategorybyAge() -> [Category] {
        guard let category = self.categorybyAge else {return []}
        return category
    }
    
    func getCategorybyNewArrivals() -> [Category] {
        guard let category = self.categorybyNewArrivals else {return []}
        return category
    }
}
