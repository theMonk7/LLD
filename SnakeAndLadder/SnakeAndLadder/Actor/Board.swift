//
//  Board.swift
//  SnakeAndLadder
//
//  Created by Utkarsh Raj on 06/08/24.
//

import Foundation

class Board {
    // MARK: - Properties
    private var size: Int
    private var obstacles: [Int: Jumper] = [:]
    private var boardStrategy:BoardStrategy
    
    init(size: Int, boardMode: BoardMode) {
        self.size = size
        self.boardStrategy = boardMode.getBoardStartStrategy()
    }
    
    
    // MARK: - Methods
    func addObstacles(obstacle: Jumper) {
        self.obstacles[obstacle.getStartPosition()] = obstacle
    }
    
    func getBoardSize() -> Int {
        return size
    }
    
    func movePlayer(player: Player, by diceNumber: Int) throws {
        
        let currentPosition = player.getCurrentPosition()
        guard boardStrategy.canStart(currentPosition: currentPosition, dice: diceNumber) else {
            print("You are at \(currentPosition) and you need to get 1 or 6 to start")
            return
        }
        var newPosition = currentPosition + diceNumber
        if let obstacle = obstacles[newPosition] {
            newPosition = obstacle.getNextPosition()
            print("You encountered \(obstacle.getName())")
        }
        if newPosition > 100 {
            print("🟡\(player.name) !!! You are trying to go out of bounds, Try again in next roll")
            return
        }
        player.movePlayerTo(position: newPosition)
    }
}
