//
//  DatabaseViewController.swift
//  FirebaseExample
//
//  Created by BaekKyoung In on 2017. 4. 30..
//  Copyright © 2017년 BaekKyoung In. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class DatabaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let rootRef = FIRDatabase.database().reference()
        let postsRef = rootRef.child("posts")
        
        for i in 0...9 {
            let postRef = postsRef.childByAutoId()
            postRef.setValue(["name":"KI","content":"\(i) content"])
        }
        
        // let postRef = postsRef.child("post1")
        // let postRef = postsRef.childByAutoId()
        // postRef.setValue(["name":"kyungin", "content":"test content"])
        
        // let contentRef = postRef.child("content")
        // contentRef.setValue("Edited content")
        
        // postRef.updateChildValues(["content": "updated content"])
        
        // postRef.removeValue()
        // contentRef.setValue(nil)
        
        // let editedPost:[String:Any?] = ["content": nil, "page": nil, "name": "Edited name"]
        
        // postRef.updateChildValues(editedPost)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
