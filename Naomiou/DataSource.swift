//
//  DataSource.swift
//  Naomiou
//
//  Created by Jeffery Xu on 15/06/2018.
//  Copyright © 2018 Jeffery Xu. All rights reserved.
//

import Foundation

class DataSource {
    let directoryURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
    
    init() {
    }
    
    var categories:Categories = Categories(category:[],categorybyAge:[],categorybyNewArrivals:[])
    
    func populateData() {
        categories = populateCategory()
    }
    
    func populateCategory() -> Categories {
        if let url = Bundle.main.url(forResource: "categories", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                categories = try decoder.decode(Categories.self, from: data)
                return categories
            } catch {
                fatalError("populate category error:\(error)")
            }
        }
        return categories
    }
}
