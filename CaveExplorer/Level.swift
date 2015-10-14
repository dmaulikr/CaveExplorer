//
//  Level.swift
//  CaveExplorer
//
//  Created by Nikolai Vazquez on 10/14/15.
//  Copyright © 2015 CCHS Coding Club. All rights reserved.
//

import Foundation

struct Level {

    var player: Player

    private var playBlock: (Player) -> Bool

    init(player: Player, playBlock: (Player) -> Bool) {
        self.player = player
        self.playBlock = playBlock
    }

    func play() -> Bool {
        return playBlock(player)
    }

}
