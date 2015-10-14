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

    init(player: Player, levels: [Level]) {
        self.player = player
        self.levels = levels
    }

}
