//
//  GameTests.swift
//  FizzBuzzTests
//
//  Created by Owen Henley on 18/08/2019.
//  Copyright © 2019 Owen Henley. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {

    let game = Game()
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }

    func testOnPlayScoreIncremented() {
        _ = game.play(move: "1")
        XCTAssertTrue(game.score == 1)
    }
    
    func testOnPlayTwiceScoreIncremented() {
        _ = game.play(move: "1")
        _ = game.play(move: "2")
        XCTAssertTrue(game.score == 2)
    }
    
    func testIfFizzMoveIsRight() {
        game.score = 2
        let response = game.play(move: "Fizz")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfFizzMoveIsWrong() {
        game.score = 1
        let response = game.play(move: "Fizz")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfBuzzMoveIsRight() {
        game.score = 4
        let response = game.play(move: "Buzz")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfBuzzMoveIsWrong() {
        game.score = 1
        let response = game.play(move: "Buzz")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfFizzBuzzMoveIsRight() {
        game.score = 14
        let response = game.play(move: "FizzBuzz")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfFizzBuzzMoveIsWrong() {
        game.score = 1
        let response = game.play(move: "FizzBuzz")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfNumberMoveIsRight() {
        game.score = 1
        let response = game.play(move: "2")
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfNumberMoveIsWrong() {
        game.score = 2
        let response = game.play(move: "3")
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveWongScoreNotIncremented() {
        game.score = 1
        _ = game.play(move: "Fizz")
        XCTAssertEqual(game.score, 1)
    }
    
    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(move: "1")
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(move: "1")
        XCTAssertNotNil(response.score)
    }
}
