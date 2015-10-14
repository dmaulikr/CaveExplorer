//
//  main.swift
//  CaveExplorer
//
//  Created by Nikolai Vazquez on 10/5/15.
//  Copyright © 2015 CCHS Coding Club. All rights reserved.
//

import Foundation

// Allows typing character by character
setbuf(stdout, nil)

let game = Game(
    player: {
        type("What's your name?")
        let name = readInput() ?? "Bob"
        type("Hi \(name), you a boy or girl?")
        let gender: Player.Gender = readInput()?.lowercaseString == "boy" ? .Boy : .Girl
        return Player(name: name, gender: gender)
    }(),
    levels: []
)

while true {
    let success = game.play()
    type("Game Over! You " + (success ? "won!" : "lost!"))
}
