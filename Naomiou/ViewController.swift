//
//  ViewController.swift
//  Naomiou
//
//  Created by Jeffery Xu on 09/05/2018.
//  Copyright © 2018 Jeffery Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var categories = ["C1", "C2", "最新上架", "最近阅读", "Horror"]
    let dataSource = DataSource()
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return categories[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let categoryRowCell = tableView.dequeueReusableCell(withIdentifier: "t1cell", for: indexPath) as! CategoryRow
            categoryRowCell.setMenu(menu: dataSource.populateCategory().getCategory())
            return categoryRowCell;
        } else if indexPath.section == 1 {
            let categorybyAgeRowCell = tableView.dequeueReusableCell(withIdentifier: "t2cell", for: indexPath) as! CategoryByAgeRow
            categorybyAgeRowCell.setMenu(menu: dataSource.populateCategory().getCategorybyAge())
            return categorybyAgeRowCell;
        } else if indexPath.section == 2 {
            let categorybyNewArrivalsCell = tableView.dequeueReusableCell(withIdentifier: "t3cell", for: indexPath) as! CategoryByNewArrivalsRow
            categorybyNewArrivalsCell.setMenu(menu: dataSource.populateCategory().getCategorybyNewArrivals())
            return categorybyNewArrivalsCell;
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "t1cell", for: indexPath)
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let imageView = UIImageView(image:UIImage(named:"head"))
        imageView.frame = CGRect(x:10, y:30, width:300, height:300)
        //self.view.addSubview(imageView)
        dataSource.populateData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 2 || indexPath.section == 3 {
            return 160
        } else {
            return 50
        }
    }
}
