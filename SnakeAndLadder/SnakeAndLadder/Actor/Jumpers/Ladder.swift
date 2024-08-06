//
//  Ladder.swift
//  SnakeAndLadder
//
//  Created by Utkarsh Raj on 06/08/24.
//

import Foundation

class Ladder: Jumper {
    private var startPosition: Int
    private var nextPosition: Int
    private var name: String
    
    init(startPosition: Int, nextPosition: Int) {
        self.startPosition = startPosition
        self.nextPosition = nextPosition
        self.name = "LADDER"
    }
    func getNextPosition() -> Int {
        return nextPosition
    }
    func getStartPosition() -> Int {
        return startPosition
    }
    
    func getName() -> String {
        return self.name
    }
    
}
