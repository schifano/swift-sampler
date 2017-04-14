//
//  TapOrHoldCounterViewController.swift
//  SwiftSampler
//
//  Created by Rachel Schifano on 4/12/17.
//  Copyright © 2017 schifano. All rights reserved.
//

import UIKit

class TapOrHoldCounterViewController: UIViewController {
    
    @IBOutlet weak var counterButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counterButton.titleLabel?.font = Style.TapCounterViewController.fontButton
        counterButton.setTitleColor(UIColor.black, for: .normal)
        counterButton.backgroundColor = Style.color(for: 0x4cd964)
        counterButton.layer.cornerRadius = 5
        counterButton.layer.masksToBounds = true
        
        counterLabel.font = Style.TapCounterViewController.fontLabel
        resetButton.titleLabel?.font = Style.TapCounterViewController.fontButton
        
        // add long press gesture recognizer
        let longPress = UILongPressGestureRecognizer(target: self, action:#selector(TapOrHoldCounterViewController.buttonLongPress))
        longPress.minimumPressDuration = 0.1
        counterButton.addGestureRecognizer(longPress)
    }
    
    func buttonLongPress(sender: UIButton) {
        counter += 1
        counterLabel.text = "\(counter)"
        counterLabel.sizeToFit()
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        counter += 1
        counterLabel.text = "\(counter)"
        counterLabel.sizeToFit()
    }
    
    @IBAction func reset(_ sender: Any) {
        counter = 0
        counterLabel.text = "\(counter)"
        counterLabel.sizeToFit()
    }
}
