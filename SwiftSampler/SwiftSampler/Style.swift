//
//  Style.swift
//  SwiftSampler
//
//  Created by Rachel Schifano on 4/12/17.
//  Copyright © 2017 schifano. All rights reserved.
//

import UIKit

struct Style {

    struct TapCounterViewController {
        static let fontButton = UIFont(name: "AvenirNext-Regular", size: 20)
        static let fontLabel = UIFont(name: "AvenirNext-Regular", size: 125)
    }
    
    struct TapOrHoldCounterViewController {
        static let fontButton = UIFont(name: "AvenirNext-Regular", size: 20)
        static let fontLabel = UIFont(name: "AvenirNext-Regular", size: 125)
    }
    
    static func color(for hex: Int) -> UIColor {
        return UIColor(red: CGFloat(Float((hex & 0xff0000) >> 16) / 255.0),
                       green: CGFloat(Float((hex & 0x00ff00) >> 8) / 255.0),
                       blue: CGFloat(Float((hex & 0x0000ff) >> 0) / 255.0),
                       alpha: CGFloat(1.0))
    }
}
