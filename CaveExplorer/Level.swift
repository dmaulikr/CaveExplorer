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

    private let playBlock: (Player) -> Bool

    init(name: String, playBlock: (Player) -> Bool) {
        self.name = name
        self.playBlock = playBlock
    }

    func play(player: Player) -> Bool {
        return playBlock(player)
    }

}
