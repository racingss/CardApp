//
//  CategoryByAgeRow.swift
//  Naomiou
//
//  Created by Jeffery Xu on 22/06/2018.
//  Copyright © 2018 Jeffery Xu. All rights reserved.
//

import UIKit

class CategoryByAgeCell: UICollectionViewCell {
    var menu:[Category] = []
    
    func setMenu(menu:[Category]) {
        self.menu = menu
    }
}
