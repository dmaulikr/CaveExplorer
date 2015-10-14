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
