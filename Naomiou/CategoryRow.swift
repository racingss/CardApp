//
//  CategoryRow.swift
//  Naomiou
//
//  Created by Jeffery Xu on 14/06/2018.
//  Copyright © 2018 Jeffery Xu. All rights reserved.
//

import UIKit

class CategoryRow: UITableViewCell {
    var menu:[Category] = []
    
    func setMenu(menu:[Category]) {
        self.menu = menu
    }
}

extension CategoryRow: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "c1Cell", for: indexPath) as! CategoryCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
}

extension CategoryRow: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemPerRow:CGFloat = 4
        let hardCodePadding:CGFloat = 5
        let itemWidth = (collectionView.bounds.width / itemPerRow) - hardCodePadding
        let itemHeight = collectionView.bounds.height - (2 * hardCodePadding)
        return CGSize(width: itemWidth, height: itemHeight)
    }
}
