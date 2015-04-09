//
//  Balloon.swift
//  99Balloons
//
//  Created by GEST Precision on 2/17/15.
//  Copyright (c) 2015 GEST Precision. All rights reserved.
//

import Foundation
import UIKit

struct Balloon {
    
    var name = "balloons"
    var image = UIImage(named:"")
    var number = 0
    
    func randomCountOfBalloons() -> Int {
        
        let randomNumber = Int(arc4random_uniform(UInt32(99)))
        var randomCountOfBalloons:Int
        return randomNumber
    
    }
}