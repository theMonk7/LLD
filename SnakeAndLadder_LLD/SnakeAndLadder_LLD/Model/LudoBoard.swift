//
//  LudoBoard.swift
//  SnakeAndLadder_LLD
//
//  Created by Utkarsh Raj on 01/12/24.
//

import Foundation

class LudoBoard: Board {
    
    var jumpersMap: [Int : Int] = [:]
    
    init(jumpers: [Jumper]) {
        setUpJumpers(jumpers: jumpers)
    }
    
    private func setUpJumpers(jumpers: [Jumper]) {
        for jumper in jumpers {
            jumpersMap[jumper.start] = jumper.end
        }
    }
    func getNextPosition(from newPosition: Int) -> Int {
        var nextPosition = newPosition
        if let endPosition = jumpersMap[nextPosition] {
            nextPosition  = endPosition
        }
        return nextPosition
    }
    
}
