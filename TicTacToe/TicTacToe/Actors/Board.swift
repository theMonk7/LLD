//
//  Board.swift
//  TicTacToe
//
//  Created by Utkarsh Raj on 03/08/24.
//

import Foundation

class Board {
    private(set) var boardMatrix: [[String]]
    
    init(row: Int, col: Int) {
        self.boardMatrix = Array.init(repeating: Array(repeating: " ", count: col), count: row)
    }
    
    func markCell(x: Int, y: Int, symbol: GameSymbol) throws {
        let row = boardMatrix.count
        let col = boardMatrix[0].count
        if x < 0 || x >= row || y < 0 || y >= col {
            throw GameError.out_of_bounds
        } else if boardMatrix[x][y] != " " {
            throw GameError.already_filled
        } else {
            boardMatrix[x][y] = symbol.rawValue
        }
        printBoard(row: row, col: col)
    }
    
    func numberOfRows() -> Int {
        return boardMatrix.count
    }
    func numberOfCols() -> Int {
        return boardMatrix[0].count
    }
    
    private func printBoard(row: Int, col: Int) {
        for i in 0..<row {
            for j in 0..<col {
                print(boardMatrix[i][j], terminator: " | ")
            }
            print("\n")
        }
        
    }
}
