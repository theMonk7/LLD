//
//  ClassicWinningStrategy.swift
//  SnakeAndLadder
//
//  Created by Utkarsh Raj on 06/08/24.
//

import Foundation

class ClassicWinningStrategy: WinningStrategy {
    func checkWinner(player: Player, board: Board) -> Bool {
        let boardsize = board.getBoardSize()
        if player.getCurrentPosition() == boardsize*boardsize {
            return true
        }
        return false
    }
    
    
}
