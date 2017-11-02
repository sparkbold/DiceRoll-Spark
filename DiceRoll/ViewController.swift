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
        
        sumLabel.text = "The Sum is: " + "\(leftDiceNumber + rightDiceNumber)"
        
        leftDiceImageView.image = UIImage(named:"Dice\(leftDiceNumber)")
        rightDiceImageView.image = UIImage(named: "Dice\(rightDiceNumber)")
    }
    
}

