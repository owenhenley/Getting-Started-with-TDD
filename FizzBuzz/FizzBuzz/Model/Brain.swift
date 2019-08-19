//
//  Brain.swift
//  FizzBuzz
//
//  Created by Owen Henley on 18/08/2019.
//  Copyright © 2019 Owen Henley. All rights reserved.
//

import Foundation

class Brain {
    
    func isDivisibleBy(_ number: Int, dividedBy: Int) -> Bool {
        return number % dividedBy == 0
    }
    
    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleBy(number, dividedBy: 3)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(number, dividedBy: 5)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisibleBy(number, dividedBy: 15)
    }
    
    func check(number: Int) -> String {
        if isDivisibleByFifteen(number: number) {
            return "FizzBuzz"
        } else if isDivisibleByFive(number: number) {
            return "Buzz"
        } else if isDivisibleByThree(number: number) {
            return "Fizz"
        } else {
            return "\(number)"
        }
    }
    
}
