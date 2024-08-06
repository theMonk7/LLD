//
//  WinningStrategy.swift
//  SnakeAndLadder
//
//  Created by Utkarsh Raj on 06/08/24.
//

import Foundation

protocol WinningStrategy {
    func checkWinner(player: Player, board: Board) -> Bool
}
