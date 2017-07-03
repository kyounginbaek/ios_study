//
//  ViewController.swift
//  ButtonExample
//
//  Created by Hyeonseok Bang on 2017. 3. 12..
//  Copyright © 2017년 Hyeonseok Bang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var correctButton: UIButton!
    var imageName = ["차은우","김진표","박보검","하연수","솔빈","엠마스톤","정연"]
    var correctAnswer = ["차은우","김남준","박보검","솔라","솔빈","엠마스톤","정연"]
    
    var index:Int!
    var correctCount:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        index = 0
        correctCount = 0
        
        profileImageView.image = UIImage(named: String(index))
        
        nameLabel.text = imageName[index]
        answerLabel.text = "맞은 개수: \(correctCount!)"
        
        
        
        
        
    }


    @IBAction func buttonDidTapped(_ sender: UIButton) {

        guard index < imageName.count else { return }
        

        if sender.tag == 0 {
            // O 버튼
            if imageName[index] == correctAnswer[index] {
                // 맞았을때
                correctCount = correctCount + 1
                answerLabel.text = "맞은 개수: \(correctCount!)"
            } else {
                // 틀렸을떄
                answerLabel.text = "틀렸습니다!"
                
            }
        } else if sender.tag == 1 {
            // X 버튼
            if imageName[index] != correctAnswer[index] {
                // 맞았을때
                correctCount = correctCount + 1
                answerLabel.text = "맞은 개수: \(correctCount!)"
            } else {
                // 틀렸을때
                answerLabel.text = "틀렸습니다!"
            }
        }
        
        
        index  = index + 1
        
        guard index < imageName.count else { return }
        profileImageView.image = UIImage(named: String(index))
        nameLabel.text = imageName[index]
            
    }
    
    

}

