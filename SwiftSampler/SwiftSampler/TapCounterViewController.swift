//
//  TapCounterViewController.swift
//  SwiftSampler
//
//  Created by Rachel Schifano on 4/11/17.
//  Copyright © 2017 schifano. All rights reserved.
//

import UIKit

class TapCounterViewController: UIViewController {
    
    @IBOutlet weak var counterButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counterButton.titleLabel?.font = Style.TapCounterViewController.fontButton
        counterLabel.font = Style.TapCounterViewController.fontLabel
        resetButton.titleLabel?.font = Style.TapCounterViewController.fontButton
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        counter += 1
        counterLabel.text = "\(counter)"
        counterLabel.sizeToFit()
    }
    
    @IBAction func resetCounter(_ sender: Any) {
        counter = 0
        counterLabel.text = "\(counter)"
        counterLabel.sizeToFit()
    }
}
