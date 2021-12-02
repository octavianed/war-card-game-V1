//
//  ViewController.swift
//  WarCardGameV1
//
//  Created by Diaconu Octavian Eduard on 15/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    @IBAction func dealTapped(_ sender: Any) {
         
        //Randomize some numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        resultLabel.alpha = 1 //para volver a ver el texto del label
        
        if(leftNumber > rightNumber) {
            //Left side wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            resultLabel.text = "Player scored!"
        } else if (leftNumber < rightNumber) {
            //Right side wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
            resultLabel.text = "CPU scored!"
        } else {
            //Tie
            resultLabel.text = "Tie!"
        }
        
        if((leftScore == 10) || (rightScore == 10)) {
            if (leftScore == 10) {
                resultLabel.text = "Player won!"
            } else if (rightScore == 10) {
                resultLabel.text = "CPU won!"
            }
            //Restart results and scores
            leftScore = 0;
            rightScore = 0;
            leftScoreLabel.text = String(leftScore)
            rightScoreLabel.text = String(rightScore)
        }
        
    
        
    }
    


}

