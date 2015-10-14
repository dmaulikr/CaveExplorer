//
//  Game.swift
//  CaveExplorer
//
//  Created by Nikolai Vazquez on 10/14/15.
//  Copyright © 2015 CCHS Coding Club. All rights reserved.
//

import Foundation

class Game {

    let player: Player

    init() {
        print("What's your name?")
        let name = readInput() ?? "Bob"
        print("Hi \(name), you a boy or girl?")
        let gender: Player.Gender = readInput()?.lowercaseString == "boy" ? .Boy : .Girl
        player = Player(name: name, gender: gender)
    }

    init(player: Player) {
        self.player = player
    }

}
