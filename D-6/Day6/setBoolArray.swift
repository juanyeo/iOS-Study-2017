//
//  setBoolArray.swift
//  Day6
//
//  Created by JongWon Yeo on 2017. 1. 10..
//  Copyright © 2017년 JongWon Yeo. All rights reserved.
//

import Foundation

struct setBool {
    func setBoolArray(lines : Int) -> Array<Array<Bool>> {
        var resultArray = Array<Array<Bool>>()
        for outFrame in 1...lines {
            let forFalse = lines - outFrame
            var smallArray = Array<Bool>()
            if forFalse == 0 {
                for _ in 1...lines {
                    smallArray.append(true)
                }
            }
            else {
            for _ in 1...forFalse {
                smallArray.append(false)
            }
            for _ in 1...outFrame {
                smallArray.append(true)
                }
            }
            resultArray.append(smallArray)
        }
        return resultArray
    }
    
    func printArray(array : Array<Array<Bool>>, newChar : Character) {
        for innerArray in array {
            for item in innerArray {
                if item {
                    print(newChar , terminator : "")
                }
                else {
                    print(" ", terminator : "")
                }
                }
            print()
            }
        }
    }
