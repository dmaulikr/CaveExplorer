//
//  main.swift
//  CaveExplorer
//
//  Created by Nikolai Vazquez on 10/5/15.
//  Copyright © 2015 CCHS Coding Club. All rights reserved.
//

import Foundation

// Allows typing character by character
setbuf(stdout, nil)

let game = Game(

    player: {
        type("What's your name?")
        let name = readInput() ?? "John Cena"
        type("Hi \(name), are you a boy or girl?")
        let gender: Player.Gender = readInput()?.lowercaseString == "boy" ? .Boy : .Girl
        return Player(name: name, gender: gender)
    }(),

    levels: [
        Level(name: "Entrance") { player in
            type("Level 1\n")
            type("\(player.name) entered a mysterious cave.")
            type("You picked up a flashlight. This might be useful.")
            type("Do you want to turn it on? (yes/no)")
            if readYN() {
                player.flashlight.on = true
                player.luck += 0.5
            }

            type("You came across three doors. Which one do you want to enter? (1, 2, or 3)")
            var num = Int(readLine() ?? "1") ?? 4
            while num < 1 || (num > 3 && num <= 9000) {
                type("There's a time and place for everything, but not now!")
                num = Int(readLine() ?? "1") ?? 4
            }

            if num >= 1 && num <= 3 {
                if num == Int((arc4random() % 3) + 1) {
                    type("A wild Dialga appeared (omgwtfbbq!)!")
                    if player.luck >= 1.1 {
                        type("You RKO Dialga. Congrats, you can go on!")
                    } else {
                        type("Dialga mauled and RKO'd you! You dead.")
                        return false
                    }
                } else {
                    type("You lucky")
                    type("What's your favorite food?")
                }

            } else {
                type("Congrats, you won!! Get off your lazy butt and do something! Go outside!")
                return true
            }
            return true
        },
        Level(name: "The Pit") { player in
            return true
        },
        Level(name: "Dark Room") { player in
            return true
        },
        Level(name: "Final Destination") { player in
            return true
        }
    ]
)

while true {
    let success = game.play()
    type("Game Over! You " + (success ? "won!" : "lost!"))
    type("Do you want to play again? (yes/no)")
    guard readYN() else { break }
}
