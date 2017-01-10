//
//  InterestManager.swift
//  Day6
//
//  Created by JongWon Yeo on 2017. 1. 10..
//  Copyright © 2017년 JongWon Yeo. All rights reserved.
//

import Foundation

struct InterestManager {
    func getInterestRate(byDay : Int) -> Double {
        if (byDay <= 90) {
            return 0.005
        }
        else if (byDay <= 180) {
            return 0.01
        }
        else if (byDay <= 364) {
            return 0.02
        }
        else {
            return 0.056
        }
    }
    func calculateAmount(day : Int, amount : Double) -> Double {
        var interest = getInterestRate(byDay: day) * amount
        return amount + interest
    }
}
