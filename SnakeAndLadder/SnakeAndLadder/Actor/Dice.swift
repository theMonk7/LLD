//
//  Dice.swift
//  SnakeAndLadder
//
//  Created by Utkarsh Raj on 06/08/24.
//

import Foundation

class Dice {
    
    func roll() -> Int {
        let diceValue = Int.random(in: 1..<7)
        print("----DICE Value: \(diceValue)")
        return diceValue
    }
}
