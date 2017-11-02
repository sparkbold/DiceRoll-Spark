//
//  ViewController.swift
//  DiceRoll
//
//  Created by Sparkbold on 11/1/17.
//  Copyright © 2017 Sparkbold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet weak var leftDiceImageView: UIImageView!
    @IBOutlet weak var rightDiceImageView: UIImageView!
    @IBOutlet weak var displayQuote: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func RollTapped(_ sender: UIButton) {
        
        let leftDiceNumber = Int(arc4random_uniform(6)) + 1
        let rightDiceNumber = Int(arc4random_uniform(6)) + 1
        let sum = leftDiceNumber + rightDiceNumber
        
        sumLabel.text = "The Sum is: " + "\(sum)"
        
        leftDiceImageView.image = UIImage(named:"Dice\(leftDiceNumber)")
        rightDiceImageView.image = UIImage(named: "Dice\(rightDiceNumber)")
        
        if sum == 2 {
            displayQuote.text = "Mmm! I got SnakeEyEs"
        }
        else if sum == 12 {
            displayQuote.text = "Haha! I got Boxcars"
        }
        else if leftDiceNumber == rightDiceNumber {
            displayQuote.text = "I got Twins"
        }
        else {
            displayQuote.text = "Let's roll"
        }
    }
    
}

