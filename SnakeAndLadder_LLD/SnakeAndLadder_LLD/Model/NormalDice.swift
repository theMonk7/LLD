//
//  NormalDice.swift
//  SnakeAndLadder_LLD
//
//  Created by Utkarsh Raj on 01/12/24.
//

import Foundation

class NormalDice : DiceStrategy {
    
    func roll() -> Int {
        return Int.random(in: 1...12)
    }

}
