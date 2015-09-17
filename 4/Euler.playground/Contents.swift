//Largest palindrome product
//Problem 4
//A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
//
//Find the largest palindrome made from the product of two 3-digit numbers.

import Foundation


func isPalindrome(number: Int) -> Bool {
  let intString = String(number)
  var begin = intString.startIndex
  var end = intString.endIndex.predecessor()
  while (begin < end) {
    if intString[begin] != intString[end] {
      return false
    }
    begin = begin.successor()
    end = end.predecessor()
  }
  return true
}

func largestPalindrome(number: Int) -> Int {
  var firstNumber = number
  while (firstNumber > 0) {
    let product = Int(firstNumber*number)
    if isPalindrome(product) {
      return product
    }
    --firstNumber
  }
  return 0
}

func largestPalindrome(digits digits: Int) -> Int {
  var number = Int(pow(10.0, Double(digits)) - 1)
  
  var palindromes: [Int] = []
  
  while (number > 0) {
    palindromes.append(largestPalindrome(number))
    --number
  }
  if let largestPalindrome = palindromes.maxElement() {
    return largestPalindrome
  }
  return 0
}

largestPalindrome(digits: 3)
// 906,609