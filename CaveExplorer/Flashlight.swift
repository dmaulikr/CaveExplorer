//
//  Flashlight.swift
//  CaveExplorer
//
//  Created by Nikolai Vazquez on 10/14/15.
//  Copyright © 2015 CCHS Coding Club. All rights reserved.
//

import Foundation

final class Flashlight: Item {

    var batteryLife: Double = 100

    var on: Bool = false

}

extension Player {

    var flashlight: Flashlight {
        get {
            guard let flashlight = items[Flashlight.Identifier] as? Flashlight else {
                let flashlight = Flashlight()
                self.items[Flashlight.Identifier] = flashlight
                return flashlight
            }
            return flashlight
        }
        set {
            self.items[Flashlight.Identifier] = newValue
        }
    }

}
