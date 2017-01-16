//
//  algorithm.swift
//  Day7
//
//  Created by 여주안 on 2017. 1. 16..
//  Copyright © 2017년 여주안. All rights reserved.
//

import Foundation

struct firstProblem {
    func getMax(seek: [Double]) -> Double {
        let he = seek.count - 1
        var she = seek[0]
        for rept in 1...he {
            if she < seek[rept] {
                she = seek[rept]
            }
            else {}
        }
        return she
    }
}

struct secondProblem {
    func reverseArray(spin: [Double]) -> [Double] {
        var frame : Array<Double> = []
        for rept in 1...spin.count {
            let he = spin.count - rept
            frame += [spin[he]]
        }
        return frame
    }
}

struct thirdProblem {
    func searchDouble(hidden: [Double]) -> Double {
        var iGotIt: Array<Double> = []
        for rept in 1...hidden.count {
            for rept2 in 1...hidden.count {
                if rept == rept2 {}
                else {
                    if hidden[rept2 - 1] == hidden[rept - 1] {
                        iGotIt += [hidden[rept - 1]]
                }
                    else {}
            }
        }
    }
        return iGotIt[0]
}
}
