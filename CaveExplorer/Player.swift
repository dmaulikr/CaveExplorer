//
//  Player.swift
//  CaveExplorer
//
//  Created by Nikolai Vazquez on 10/14/15.
//  Copyright © 2015 CCHS Coding Club. All rights reserved.
//

import Foundation

class Player {

    enum Gender {
        case Boy
        case Girl
    }

    var name: String

    var gender: Gender

    init(name: String, gender: Gender = .Boy) {
        self.name   = name
        self.gender = gender
    }

}
