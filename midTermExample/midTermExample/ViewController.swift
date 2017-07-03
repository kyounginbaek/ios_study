//
//  ViewController.swift
//  midTermExample
//
//  Created by BaekKyoung In on 2017. 4. 14..
//  Copyright © 2017년 BaekKyoung In. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webCollectionView: UICollectionView!
    
    let cellName = "ExmapleCell"
    
    var imageArray:[UIImage?]!
    var selectedIndex:Int!
    
    var urlArray:[String] = ["http://www.naver.com/", "https://www.facebook.com/", "https://www.apple.com/kr/", "https://google.co.kr", "https://www.airbnb.co.kr/"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webCollectionView.delegate = self
        webCollectionView.dataSource = self
        
        imageArray = [UIImage?]()
        imageArray.append(UIImage(named: "naver"))
        imageArray.append(UIImage(named: "facebook"))
        imageArray.append(UIImage(named: "apple"))
        imageArray.append(UIImage(named: "google"))
        imageArray.append(UIImage(named: "airbnb"))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "Detail"{
            
            if let destinationVC = segue.destination as? WebViewController {
                
                destinationVC.url = urlArray[selectedIndex]
                
            }
        }
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ExampleCell", for: indexPath) as! CollectionViewCell

        cell.cellImageView.image = imageArray[indexPath.item]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        selectedIndex = indexPath.item
        performSegue(withIdentifier: "Detail", sender: self)
    }

}

