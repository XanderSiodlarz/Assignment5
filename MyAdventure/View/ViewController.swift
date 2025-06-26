//
//  ViewController.swift
//  MyAdventure
//
//  Created by Xander The Boss on 6/25/25.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var statementLabel: UILabel!
    
    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var optionTwo: UIButton!
    
    @IBOutlet weak var optionOne: UIButton!
    
    var statementLogic = AdventureLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    
    @IBAction func decisionMade(_ sender: UIButton) {
        let decision = sender.titleLabel!.text!
        statementLogic.increaseIndex(decision)
        
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        statementLabel.text = statementLogic.getNextStatement()
        background.image = UIImage(named: String(statementLogic.getImageName()))
        optionOne.setTitle(statementLogic.getOptionOne(), for: .normal)
        optionTwo.setTitle(statementLogic.getOptionTwo(), for: .normal)
    }

}

