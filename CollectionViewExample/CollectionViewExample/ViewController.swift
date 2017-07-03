//
//  ViewController.swift
//  CollectionViewExample
//
//  Created by BaekKyoung In on 2017. 4. 9..
//  Copyright © 2017년 BaekKyoung In. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var exampleCollectionView: UICollectionView!
    
    let cellName = "ExampleCell"
    
    let numberOfItemsInRow:CGFloat = 4
    let margin:CGFloat = 1
    
    var imageArray:[UIImage?]!
    var selectedIndex:Int!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        exampleCollectionView.delegate = self
        exampleCollectionView.dataSource = self
        
        exampleCollectionView.register(UINib(nibName: "ExampleCell", bundle: nil), forCellWithReuseIdentifier: cellName)
        
        let layout = exampleCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumInteritemSpacing = margin
        layout.minimumLineSpacing = margin
        
        imageArray = [UIImage?]()
        imageArray.append(UIImage(named: "1"))
        imageArray.append(UIImage(named: "2"))
        imageArray.append(UIImage(named: "3"))
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "Detail"{
         
            if let destinationVC = segue.destination as? DetailViewController {
                
                destinationVC.image = imageArray[selectedIndex % imageArray.count]
                
            }
        }
    }

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ExampleCell", for: indexPath) as! ExampleCell
        
        cell.exampleImageView.image = imageArray[indexPath.item % imageArray.count]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = (collectionView.bounds.width - (margin * (numberOfItemsInRow-1)))/numberOfItemsInRow
    
        return CGSize(width: width, height: width )
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        selectedIndex = indexPath.item
        performSegue(withIdentifier: "Detail", sender: self)
    }
    
}
