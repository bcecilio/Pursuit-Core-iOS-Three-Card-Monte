//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var card0: UIButton!
    
    @IBOutlet weak var card1: UIButton!
    
    @IBOutlet weak var card2: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }

    @IBAction func newGame(_ sender: UIButton) {
        displayLabel.text = "Pick a Card! Find the King!"
        
        card0.setBackgroundImage(#imageLiteral(resourceName: "cardBackRed"),for: .normal)
//        card0.setImage(UIImage(named: "cardRedBack"), for: .normal)
        card1.setBackgroundImage(#imageLiteral(resourceName: "cardBackRed"),for: .normal)
        card2.setBackgroundImage(#imageLiteral(resourceName: "cardBackRed"),for: .normal)
        
        card0.isEnabled = true
        card1.isEnabled = true
        card2.isEnabled = true
    }
    
    @IBAction func cardFlip(_ sender: UIButton) {
        
      let randomKing = Int.random(in: 0...2)
        
        if sender.tag == randomKing {
            sender.setBackgroundImage(#imageLiteral(resourceName: "kingCard"),for: .normal)
            displayLabel.text = "You Win!"
        } else if sender.tag != randomKing {
            sender.setBackgroundImage(#imageLiteral(resourceName: "threeCard"),for: .normal)
            displayLabel.text = "You Lose lol!"
            }
        card0.isEnabled = false
        card1.isEnabled = false
        card2.isEnabled = false
    }
}


