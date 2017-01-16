//
//  main.swift
//  Day7
//
//  Created by 여주안 on 2017. 1. 11..
//  Copyright © 2017년 여주안. All rights reserved.
//

import Foundation

let load = antFunction()
print(load.antFunction(inputArray: [1,2,3,3,2,2,2,1]))

let load0 = firstProblem()
print(load0.getMax(seek: [-1,-2]))

let load1 = secondProblem()
print(load1.reverseArray(spin: [1,2,3,4,-1,6,8,10,0]))

let load2 = thirdProblem()
print(load2.searchDouble(hidden: [5,5,4,3,2,1,8,9]))
