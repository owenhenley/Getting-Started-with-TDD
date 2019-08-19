//
//  ViewControllerTests.swift
//  FizzBuzzTests
//
//  Created by Owen Henley on 19/08/2019.
//  Copyright © 2019 Owen Henley. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerTests: XCTestCase {
    
    var viewController: ViewController!

    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = (storyboard.instantiateViewController(identifier: "ViewController") as! ViewController)
        
        guard let keyWindow = UIApplication.shared.connectedScenes.filter({$0.activationState == .foregroundActive}).map({$0 as? UIWindowScene}).compactMap({$0}).first?.windows.filter({$0.isKeyWindow}).first else { return }
        keyWindow.rootViewController = viewController
        
        let _ = viewController.view
    }

    override func tearDown() {
        super.tearDown()
    }
    
    func test() {
        viewController.play(move: "1")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2ImcrementScore() {
        viewController.play(move: "1")
        viewController.play(move: "2")
        
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, 2)
    }
    
    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }
    
    func testFizzIncrementScore() {
        viewController.game?.score = 2
        viewController.play(move: "Fizz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }
    func testBuzzIncrementScore() {
        viewController.game?.score = 4
        viewController.play(move: "Buzz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    func testFizzBuzzIncrementScore() {
        viewController.game?.score = 14
        viewController.play(move: "FizzBuzz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    func testOnWrongMoveScoreNotIncremented() {
        viewController.play(move: "Fizz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 0)
    }
    
}
