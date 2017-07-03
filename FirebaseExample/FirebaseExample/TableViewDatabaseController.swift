//
//  TableViewDatabaseController.swift
//  FirebaseExample
//
//  Created by BaekKyoung In on 2017. 5. 1..
//  Copyright © 2017년 BaekKyoung In. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class TableViewDatabaseController: UIViewController {

    var posts = [[String:String]]() {
        
        didSet{
            print("didSet called")
            self.tableView.reloadData()
        }
        
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let rootRef = FIRDatabase.database().reference()
        let postsRef = rootRef.child("posts")
        
        postsRef.observeSingleEvent(of: .value, with: {(snapshot) in
            
            var tempPosts = [[String:String]]()
            
            for elements in snapshot.children{
            
                let tempSnapshot = elements as! FIRDataSnapshot
                
                let tempPost = tempSnapshot.value as! [String:String]
                
                tempPosts.append(tempPost)
                
            }
            
            self.posts.append(contentsOf: tempPosts)
            
            // self.tableView.reloadData()
            
        })
    }
}

extension TableViewDatabaseController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if posts != nil {
            return posts.count
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! DatabaseTableViewCell
        
        let singlePost = posts[indexPath.row]
        cell.nameLabel.text = singlePost["name"]
        cell.contentLabel.text = singlePost["content"]
        
        return cell
    }
    
}

