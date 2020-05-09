//
//  ViewController.swift
//  WarCardGame
//
//  Created by bobby irawan on 09/05/20.
//  Copyright © 2020 Bobby Irawan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageViewLeft: UIImageView!
    @IBOutlet weak var imageViewRight: UIImageView!
    
    
    @IBOutlet weak var playeScoreLabel: UILabel!
    @IBOutlet weak var cpuScoreLabel: UILabel!
    
    var playerScore = 0
    var cpuScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonDeal(_ sender: Any) {
        let leftNumber = Int.random(in:  2...14)
        let rightNumber = Int.random(in: 2...14)
        
        imageViewLeft.image = UIImage(named: "card\(leftNumber)")
        imageViewRight.image = UIImage(named: "card\(rightNumber)")
        
        if (leftNumber > rightNumber) {
            playerScore+=1
            playeScoreLabel.text = String(playerScore)
        } else if leftNumber < rightNumber {
            cpuScore+=1
            cpuScoreLabel.text = String(cpuScore)
        }
    }
    
    @IBAction func buttonReset(_ sender: Any) {
        cpuScore = 0
        playerScore = 0
        cpuScoreLabel.text = String(cpuScore)
        playeScoreLabel.text = String(playerScore)
    }
}

