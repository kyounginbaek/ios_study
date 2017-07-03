//
//  ViewController.swift
//  TableViewExample
//
//  Created by BaekKyoung In on 2017. 3. 31..
//  Copyright © 2017년 BaekKyoung In. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var exampleTableView: UITableView!
    
    let tableViewArray = ["빨", "주", "노", "초", "파", "남", "보"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        exampleTableView.rowHeight = 52
        exampleTableView.tableFooterView = UIView()
        
        let nav = self.navigationController?.navigationBar
        nav?.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return tableViewArray.count
        } else if section == 1 {
            return 7
        }
        
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ExampleTableViewCell
        
        cell.cellLabel.text = tableViewArray[indexPath.row]
        cell.cellImageView.image = #imageLiteral(resourceName: "image")
        
//        if indexPath.section == 0 {
//            cell.backgroundColor = .red
//        } else if indexPath.section == 1 {
//            cell.backgroundColor = .green
//        }
        
        return cell
    }
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

