//
//  BusyAnt.swift
//  Day6
//
//  Created by JongWon Yeo on 2017. 1. 10..
//  Copyright © 2017년 JongWon Yeo. All rights reserved.
//

import Foundation

struct antFunction {
    func antFunction(inputArray : [Int]) -> [Int] {
        var resultArray : Array<Int> = []
        var repeatTime = inputArray.count - 1
        var repeatedTime = 1
        if repeatTime == 0 {
            resultArray += [inputArray[0]]
            resultArray += [1]
        }
        else {
        for keepIncrease in 1...repeatTime {
            var beforeIncrease = keepIncrease - 1
            if keepIncrease == repeatTime {
                if inputArray[beforeIncrease] == inputArray[keepIncrease] {
                    repeatedTime += 1
                    resultArray += [inputArray[beforeIncrease]]
                    resultArray += [repeatedTime]
                }
                else {
                    resultArray += [inputArray[beforeIncrease]]
                    resultArray += [repeatedTime]
                    resultArray += [inputArray[keepIncrease]]
                    resultArray += [1]
                }
            }
            else if inputArray[beforeIncrease] == inputArray[keepIncrease] {
                repeatedTime += 1
            }
            else {
                resultArray += [inputArray[beforeIncrease]]
                resultArray += [repeatedTime]
                repeatedTime = 1
            }
        }
        }
        return resultArray
    }
}
