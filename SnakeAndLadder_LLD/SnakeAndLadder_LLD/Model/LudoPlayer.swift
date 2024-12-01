//
//  LudoPlayer.swift
//  SnakeAndLadder_LLD
//
//  Created by Utkarsh Raj on 01/12/24.
//

import Foundation

class LudoPlayer: User, Player {
    var name: String
    private var position: Int = 0
    var id: UUID = UUID()
    
    
    init(name: String) {
        self.name = name
    }
    
    func getName() -> String {
        return name
    }
    
    func roll(_ dice: DiceStrategy) -> Int {
        let val = dice.roll()
        print("Player: \(name) rolled a \(val)")
        return val
    }
    
    func getPosition() -> Int {
        return position
    }
    
    func setPosition(_ to: Int) {
        print("Player \(name) moved from \(position) to \(to)")
        self.position = to
        
    }
}
