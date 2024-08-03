//
//  N_WinningStrategy.swift
//  TicTacToe
//
//  Created by Utkarsh Raj on 03/08/24.
//

import Foundation

class N_WinningStrategy: WinningStrategy {

    func checkWinner(matrix: [[String]],player: Player, x: Int, y: Int) -> Bool {
        let playerSymbol = player.symbol
        let row = matrix.count
        let col = matrix[0].count
        
        return checkRowWin(matrix: matrix, currentRow: x,col: col, symbol: playerSymbol) ||
        checkColWin(matrix: matrix, currentCol: y, row: row, symbol: playerSymbol) ||
        checkDiagonolWin(matrix: matrix, symbol: playerSymbol)
        
    }
    

    private func checkRowWin(matrix: [[String]],currentRow: Int, col: Int, symbol: GameSymbol) -> Bool {
                
        for i in 0..<col {
            if matrix[currentRow][i] != symbol.rawValue {
                return false
            }
        }
        return true
        
    }
    private func checkColWin(matrix: [[String]],currentCol: Int, row: Int, symbol: GameSymbol) -> Bool {
        
        for i in 0..<row {
            if matrix[i][currentCol] != symbol.rawValue {
                return false
            }
        }
        return true
    }
    private func checkDiagonolWin(matrix: [[String]],symbol: GameSymbol) -> Bool {

        let row = matrix.count
        var leadingDiagonol = true
        var oppDiagonol = true
        for i in 0..<row {
            if matrix[i][row-1-i] != symbol.rawValue {
                oppDiagonol = false
            }
        }
        for i in 0..<row {
            if matrix[i][i] != symbol.rawValue {
                leadingDiagonol = false
            }
        }
        return leadingDiagonol || oppDiagonol
    }

}
