//
//  SolitaireDeck.swift
//  solitaire
//
//  Created by 여주안 on 2017. 1. 23..
//  Copyright © 2017년 여주안. All rights reserved.
//

import Foundation

struct solitaireDeck {
    func shuffleCards(imgNameGroup : [String]) -> [String] {
        var result = imgNameGroup
        for more in 0...51 {
            let changeNum = Int(arc4random_uniform(UInt32(52 - more))) + more
            if more != changeNum {
                swap(&result[more], &result[changeNum])
            }
        }
        return result
    }
}
