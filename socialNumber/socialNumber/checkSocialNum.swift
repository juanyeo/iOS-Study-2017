//
//  checkSocialNum.swift
//  socialNumber
//
//  Created by 여주안 on 2017. 1. 25..
//  Copyright © 2017년 여주안. All rights reserved.
//

import Foundation

struct checkSocialNum {
    func checkThat(str1 : String, str2 : String) -> Int {
        let str1Array = Array(str1.unicodeScalars)
        let str2Array = Array(str2.unicodeScalars)
        var lastnum = 0
        for gugu in 0...5 {
            lastnum += (Int(str1Array[gugu].value) - 48) * (gugu + 2)
        }
        for nunu in 0...6 {
            if nunu < 2 {
                lastnum += (Int(str2Array[nunu].value) - 48) * (nunu + 8)
            }
            else {
                lastnum += (Int(str2Array[nunu].value) - 48) * nunu
            }
        }
        lastnum = (11 - (lastnum % 11)) % 10
        return lastnum
    }
}
