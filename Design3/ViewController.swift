//
//  ViewController.swift
//  Design3
//
//  Created by Sebastian Strus on 2017-03-25.
//  Copyright © 2017 Sebastian Strus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var card1: RoundButton!
    @IBOutlet weak var card2: RoundButton!
    @IBOutlet weak var card3: RoundButton!
    @IBOutlet weak var card4: RoundButton!

    @IBOutlet weak var mainButton: UIButton!
    
    var card1ButtonCenter: CGPoint!
    var card2ButtonCenter: CGPoint!
    var card3ButtonCenter: CGPoint!
    var card4ButtonCenter: CGPoint!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        card1ButtonCenter = card1.center
        card2ButtonCenter = card2.center
        card3ButtonCenter = card3.center
        card4ButtonCenter = card4.center
        
        
        card1.center = mainButton.center
        card2.center = mainButton.center
        card3.center = mainButton.center
        card4.center = mainButton.center
    }



    @IBAction func mainPressed(_ sender: UIButton) {
        if (card1.center == mainButton.center) {
            UIView.animate(withDuration: 0.3, animations: {
                self.card1.center = self.card1ButtonCenter
                self.card2.center = self.card2ButtonCenter
                self.card3.center = self.card3ButtonCenter
                self.card4.center = self.card4ButtonCenter
            })
        }
        else {
            UIView.animate(withDuration: 0.3, animations: {
                self.card1.center = self.mainButton.center
                self.card2.center = self.mainButton.center
                self.card3.center = self.mainButton.center
                self.card4.center = self.mainButton.center
            })
        }
    }
    
    @IBAction func card1Pressed(_ sender: RoundButton) {
        toggleButton(sender)
    }
    
    @IBAction func card2Pressed(_ sender: RoundButton) {
        toggleButton(sender)
    }

    @IBAction func card3Pressed(_ sender: RoundButton) {
        toggleButton(sender)
    }

    @IBAction func card4Pressed(_ sender: RoundButton) {
        toggleButton(sender)
    }
    
    func toggleButton(_ sender: RoundButton) {
        if sender.backgroundColor == UIColor.white  {
            sender.backgroundColor = UIColor.gray
        }
        else {
            sender.backgroundColor = UIColor.white
        }
    }
}

