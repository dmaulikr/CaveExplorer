//
//  Extensions.swift
//  CaveExplorer
//
//  Created by Nikolai Vazquez on 10/14/15.
//  Copyright © 2015 CCHS Coding Club. All rights reserved.
//

import Foundation

extension Player {

    private struct AssociatedKeys {
        static var Luck = "CE_PlayerLuck"
    }

    var luck: Double {
        get {
            guard let luck = objc_getAssociatedObject(self, &AssociatedKeys.Luck) as? Double else {
                return 1.0
            }
            return luck
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.Luck, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

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
