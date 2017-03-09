//
//  SecondImageViewController.swift
//  ImageViewExercise
//
//  Created by Hyeonseok Bang on 2017. 3. 7..
//  Copyright © 2017년 Hyeonseok Bang. All rights reserved.
//

import UIKit

class SecondImageViewController: UIViewController {

    @IBOutlet weak var secondImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondImageView.image = UIImage(named: "Image1")
        secondImageView.contentMode = UIViewContentMode.scaleAspectFill
    }

}
