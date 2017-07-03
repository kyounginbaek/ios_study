//
//  ViewController.swift
//  ButtonExample
//
//  Created by BaekKyoung In on 2017. 3. 10..
//  Copyright © 2017년 BaekKyoung In. All rights reserved.
//

// UIKit이 기본적으로 Foundation을 import하고 있음
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    var imageName = ["차은우", "김진표", "박보검", "하연수", "솔빈", "엠마스톤", "정연"]
    var correctAnswer = ["차은우", "김남준", "박보검", "솔라", "솔빈", "엠마스톤", "정연"]
    
    var index:Int!
    var correctCount:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        index = 0
        
        profileImageView.image = UIImage(named: String(index))
        
        nameLabel.text = imageName[index]
        countLabel.text = "맞은 갯수 : \(correctCount)"
    }
    
    
    
    @IBAction func any(_ sender: Any) {
        let selectedButton = sender as? UIButton
        
    }
    
    @IBAction func buttonDidTapped(_ sender: UIButton) {
        guard index < imageName.count else {return}
        if sender.tag == 0 {
            // O버튼 눌림
            if imageName[index] == correctAnswer[index] {
                // 정답
                correctCount += 1
                countLabel.text = "맞은 갯수 : \(correctCount)"
            } else {
                // 오답
                countLabel.text = "틀렸습니다!"
            }
        } else if sender.tag == 1 {
            // X버튼 눌림
            if imageName[index] != correctAnswer[index] {
                // 정답
                correctCount += 1
                countLabel.text = "맞은 갯수 : \(correctCount)"
            } else {
                // 오답
                countLabel.text = "틀렸습니다!"
            }
        }
        
        index = index + 1
        
        guard index < imageName.count else {return}
        profileImageView.image = UIImage(named: String(index))
        nameLabel.text = imageName[index]
        
    }
}

