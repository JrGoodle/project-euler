//: Playground - noun: a place where people can play

import Foundation

let goldenRatio = (1 + sqrt(5.0))/2

func fibonacciNumber(n n: Int) -> Int {
  let phiToN = pow(goldenRatio, Double(n))
  let negativePhiToNegativeN = pow(-goldenRatio, -Double(n))
  let fibonacciNumber = (phiToN - negativePhiToNegativeN)/sqrt(5.0)
  return Int(fibonacciNumber)
}

var sum = 0

// Every 3rd number is even
for var i=3; fibonacciNumber(n: i) < 4000000; i=i+3 {
  sum += fibonacciNumber(n: i)
}

print(sum)
