//
//  WinningStrategy.swift
//  TicTacToe
//
//  Created by Utkarsh Raj on 03/08/24.
//

import Foundation

protocol WinningStrategy {
    func checkWinner(matrix: [[String]], player: Player,x: Int, y: Int) -> Bool
}
