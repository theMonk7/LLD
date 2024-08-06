//
//  Player.swift
//  SnakeAndLadder
//
//  Created by Utkarsh Raj on 06/08/24.
//

import Foundation

class Player: User {
    var name: String
    var id: UUID = UUID()
    private var position: Int = 1 {
        didSet {
            print("Player \(name) moved to from \(oldValue) to \(position)")
        }
    }
    
    init(name: String, position: Int = 1) {
        self.name = name
        self.position = position
    }
    
    func getCurrentPosition() -> Int {
        return position
    }
    func movePlayerTo(position: Int) {
        self.position = position
    }
    
}
