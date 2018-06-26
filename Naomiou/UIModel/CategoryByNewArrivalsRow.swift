//
//  CategoryByNewArrivalsRow.swift
//  Naomiou
//
//  Created by Jeffery Xu on 14/06/2018.
//  Copyright © 2018 Jeffery Xu. All rights reserved.
//

import UIKit

class CategoryByNewArrivalsRow: UITableViewCell {
    var menu:[Category] = []
    
    func setMenu(menu:[Category]) {
        self.menu = menu
    }
}

extension CategoryByNewArrivalsRow: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "c3Cell", for: indexPath) as! CategoryByNewArrivalsCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
}

extension CategoryByNewArrivalsRow: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemPerRow:CGFloat = 3
        let hardCodePadding:CGFloat = 1
        let itemWidth = (collectionView.bounds.width / itemPerRow) - hardCodePadding
        let itemHeight = collectionView.bounds.height - (2 * hardCodePadding)
        return CGSize(width: itemWidth, height: itemHeight)
    }
}


