//
//  ClassicStartStrategy.swift
//  SnakeAndLadder
//
//  Created by Utkarsh Raj on 06/08/24.
//

import Foundation

class ClassicStartStrategy: BoardStrategy {
    private let startNumber: Int
    init(startNumber: Int) {
        self.startNumber = startNumber
    }
    func canStart(currentPosition:Int, dice: Int) -> Bool {
        if currentPosition == 1 {
            if dice == startNumber {
                return true
            }
            return false
            
        } else {
            return true
        }

    }
    
    
}
