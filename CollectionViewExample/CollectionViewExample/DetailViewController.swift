//
//  DetailViewController.swift
//  CollectionViewExample
//
//  Created by BaekKyoung In on 2017. 4. 10..
//  Copyright © 2017년 BaekKyoung In. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailImageView: UIImageView!
    
    var image:UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailImageView.image = image
        detailImageView.contentMode = UIViewContentMode.scaleAspectFill

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
