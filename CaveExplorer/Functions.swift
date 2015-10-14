//
//  Functions.swift
//  CaveExplorer
//
//  Created by Nikolai Vazquez on 10/14/15.
//  Copyright © 2015 CCHS Coding Club. All rights reserved.
//

import Foundation

func | (lhs: String, rhs: String) -> String {
    return "\(lhs)\n\(rhs)"
}

func readInput() -> String? {
    defer { print("") }
    print("> ", terminator: "")
    return readLine()
}

func readYN() -> Bool {
    return readInput()?.lowercaseString == "yes"
}

func type(value: String, speed: Double = 1) {
    let time = UInt32(50_000 / speed)
    for character in value.characters {
        print(character, terminator: "")
        usleep(time)
    }
    print("")
}
