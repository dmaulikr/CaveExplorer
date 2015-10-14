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

    let levels: [Level]

    init(levels: [Level]) {
        print("What's your name?")
        let name = readInput() ?? "Bob"
        print("Hi \(name), you a boy or girl?")
        let gender: Player.Gender = readInput()?.lowercaseString == "boy" ? .Boy : .Girl
        self.player = Player(name: name, gender: gender)
        self.levels = levels
    }

    init(player: Player, levels: [Level]) {
        self.player = player
        self.levels = levels
    }

}
