//
//  Level.swift
//  CaveExplorer
//
//  Created by Nikolai Vazquez on 10/14/15.
//  Copyright © 2015 CCHS Coding Club. All rights reserved.
//

import Foundation

struct Level {

    let name: String

    var player: Player

    private let playBlock: (Player) -> Bool

    init(name: String, player: Player, playBlock: (Player) -> Bool) {
        self.name = name
        self.player = player
        self.playBlock = playBlock
    }

    func play() -> Bool {
        return playBlock(player)
    }

}
