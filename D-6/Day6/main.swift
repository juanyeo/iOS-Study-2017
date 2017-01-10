//
//  main.swift
//  Day6
//
//  Created by JongWon Yeo on 2017. 1. 10..
//  Copyright © 2017년 JongWon Yeo. All rights reserved.
//

import Foundation

let load = InterestManager()

func testInterest(unitDay : Int) {
    var keepIncrease = unitDay
    while keepIncrease <= 365 {
        print("거치 기간이 \(keepIncrease)일인 경우 이자율은 \(load.getInterestRate(byDay: keepIncrease))이며 예치 금액은 \(load.calculateAmount(day: keepIncrease, amount: 1000000)) 입니다.")
        keepIncrease = keepIncrease + unitDay
    }
}

testInterest(unitDay: 5)
