//
//  originCheck.swift
//  socialNumber
//
//  Created by 여주안 on 2017. 1. 25..
//  Copyright © 2017년 여주안. All rights reserved.
//

import Foundation

struct originCheck {
    func originCheck(str1 : String, str2 : String) -> Int {
        let str1Array = Array(str1.unicodeScalars)
        let str2Array = Array(str2.unicodeScalars)
        let num = CharacterSet.decimalDigits
        var one = 1
        if str1Array.count == 6 && str2Array.count == 7 {
            for compare in str1Array {
                if num.contains(compare) {
                }
                else {
                    one += 1
                }
            }
            for compare in str2Array {
                if num.contains(compare) {
                }
                else {
                    one += 1
                }
            }
        }
        else {
            one -= 1
        }
        return one
        }
}
