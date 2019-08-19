//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Owen Henley on 18/08/2019.
//  Copyright © 2019 Owen Henley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game: Game? // sot
    var gameScore: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
    }
    
    func play(move: String) {
        guard let game = game else { return }
        let response = game.play(move: move)
        gameScore = response.score
    }


}

