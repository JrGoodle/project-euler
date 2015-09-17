//: Playground - noun: a place where people can play

import UIKit

func sumTriangularNumbers(n n: Int) -> Int {
  return (n*(n+1))/2
}

let sum3 = 3*sumTriangularNumbers(n: 333)
let sum5 = 5*sumTriangularNumbers(n: 199)
let sum15 = 15*sumTriangularNumbers(n: 66)

let sum = sum3 + sum5 - sum15