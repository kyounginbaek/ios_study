//
//  ViewController.swift
//  ButtonExample
//
//  Created by Hyeonseok Bang on 2017. 3. 10..
//  Copyright © 2017년 Hyeonseok Bang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var correctButton: UIButton!
    
    var imageName = ["차은우","김진표","박보검","하연수","솔빈","엠마스톤","정연"]
    var correctAnswer = ["차은우","김남준","박보검","솔라","솔빈","엠마스톤","정연"]
    
    var index:Int!
    var correctCount:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        index = 0
        
        profileImageView.image = UIImage(named: String(index))
        nameLabel.text = imageName[index]
        countLabel.text = "맞은 갯수 : \(correctCount)"
        correctButton.setTitleColor(UIColor.blue, for: UIControlState.focused)
        correctButton.setTitleColor(UIColor.blue, for: UIControlState.highlighted)
        //correctButton.setTitle("테스트입니다", for: .normal)

    }
    
    @IBAction func buttonDidTapped(_ sender: UIButton) {
        guard index < imageName.count else { return }
        guard index < imageName.count else {return}
        if sender.tag == 0 {
            // O버튼 눌림
            if imageName[index] == correctAnswer[index] {
                // 정답
                correctCount += 1
                countLabel.text = "맞은 갯수 : \(correctCount)"
                
            } else {
                //오답
                countLabel.text = "틀렸습니다!"
            }
            
        } else if sender.tag == 1 {
            if imageName[index] != correctAnswer[index] {
                //정답
                correctCount += 1
                countLabel.text = "맞은 갯수 : \(correctCount)"
                
            } else {
                //오답
                countLabel.text = "틀렸습니다!"
            }
            
        }
        
        
        index = index + 1
        
        guard index < imageName.count else { return }
        
        profileImageView.image = UIImage(named: String(index))
        nameLabel.text = imageName[index]


    }


}

