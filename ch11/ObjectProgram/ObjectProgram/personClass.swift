//
//  personClass.swift
//  ObjectProgram
//
//  Created by Wallace Wang on 4/15/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Foundation

class person {
    var hitPoints = 10
    func shoot () -> Int {
        let odds = 1 + Int(arc4random_uniform(3))
        if odds == 3 {
            // Hit, randomly determine damage from 1..3
            return 1 + Int(arc4random_uniform(3))
        } else {
            return 0 // Missed
        }
    }
}
