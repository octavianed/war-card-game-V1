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
    
    func restartResultsScores() {
        //Restart results and scores
        leftScore = 0;
        rightScore = 0;
        leftScoreLabel.text = String(leftScore)
        rightScoreLabel.text = String(rightScore)
    }
    
    @IBAction func dealTapped(_ sender: Any) {
         
        //Randomize some numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        //make the text visible again, originally alpha=0
        resultLabel.alpha = 1
        
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
        
        if (leftScore == 10) {
            resultLabel.text = "Player won! Tap Deal to play again"
            restartResultsScores()
        } else if (rightScore == 10) {
            resultLabel.text = "CPU won! Tap Deal to play again"
            restartResultsScores()
        }
        

    }
    


}

