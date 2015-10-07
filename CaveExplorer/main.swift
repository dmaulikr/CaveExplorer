//
//  main.swift
//  CaveExplorer
//
//  Created by Nikolai Vazquez on 10/5/15.
//  Copyright © 2015 CCHS Coding Club. All rights reserved.
//

import Foundation

// MARK: - Variables

var playing = true
var playerName: String!
var playerLuck            = 1.0
var playerScore           = 0.0
var playerScoreMultiplier = 1.0
var flashlightOn          = false

// MARK: - Functions

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

func randChance(luck: Double = playerLuck) -> Bool {
    return Double(random() % 100) * luck > 50
}

// MARK: - Game

while playing {

    // This gets run at the end of each loop iteration
    defer {
        print("GAME OVER!"
            | ""
            | "Stats:"
            | "Name:  \(playerName)"
            | "Score: \(playerScore) x \(playerScoreMultiplier) = \(playerScore * playerScoreMultiplier)"
            | ""
            | "Play again? (yes/no)")
        playing = readYN()
        if playing { print("") }
    }

    // Start of the game

    print("Welcome, explorer! What is your name?")
    playerName = readInput()

    print("\(playerName) entered a mysterious cave."
        | ""
        | "It's dangerous to go alone! Take this!"
        | "\(playerName) picked up a flashlight. He isn't sure what good it'll do him but oh well."
        | ""
        | "\(playerName) came across a split in the cave."
        | "In which direction do you want to go? (left/right)")

    switch readInput()!.lowercaseString {
    case "left":
        if randChance() == false {
            print("\(playerName) stumbled into an abyss....he will be missed.")
            continue
        }
    case "right":
        if randChance() == false {
            print("\(playerName) was attacked by a wild hoard of bats. Needless to say, he didn't make it.")
            continue
        }
    default:
        print("Due to \(playerName)'s indecision, he waited there and starved.")
        continue
    }

    print("\(playerName) notices that the cave is getting darker and darker."
        | "Would you like to turn on the flashlight? (yes/no)")
    if readYN() {
        flashlightOn = true
        playerLuck += 0.1
    } else {
        playerScoreMultiplier += 1
    }
}
