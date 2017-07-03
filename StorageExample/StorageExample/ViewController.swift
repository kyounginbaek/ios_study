//
//  ViewController.swift
//  StorageExample
//
//  Created by BaekKyoung In on 2017. 5. 12..
//  Copyright © 2017년 BaekKyoung In. All rights reserved.
//

import UIKit
import Firebase
import FirebaseStorage
import Kingfisher

class ViewController: UIViewController {
    
    @IBOutlet weak var storageImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storageRootRef = FIRStorage.storage().reference()
        
        let storagePostsRef = storageRootRef.child("posts").child("pig.jpg")
        
        storagePostsRef.downloadURL { (url, error) in
            
            guard error == nil else { return print(error!.localizedDescription) }
            guard url != nil else { return }
            
            let resource = ImageResource(downloadURL: url!)
            self.storageImageView.kf.setImage(with: resource)
            
//            if error != nil {
//                //error occured
//                print(error!.localizedDescription)
//            } else {
//                //download complete
//                print(url!.absoluteString)
//            }
        }
        
//        let image = UIImageJPEGRepresentation(UIImage(named: "pig")!, 0.6)!
//        
//        // UIImagePNGRepresentation(<#T##image: UIImage##UIImage#>)
//        
//        storagePostsRef.put(image, metadata: nil) { (metadata, error) in
//            
//            if error != nil {
//                print(error!.localizedDescription)
//            } else {
//                print(metadata!.downloadURL()!.absoluteString)
//            }
//            
//        }
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

