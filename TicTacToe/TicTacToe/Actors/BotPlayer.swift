//
//  BotPlayer.swift
//  TicTacToe
//
//  Created by Utkarsh Raj on 03/08/24.
//

import Foundation

class BotPlayer: Player, BotPlayingStrategy {
    
    
    let symbol: GameSymbol
    let name: String
    init(symbol: GameSymbol, name: String = "BOT") {
        self.symbol = symbol
        self.name = name
    }
    
    func isABot() -> Bool {
        return true
    }
    func makeMove(board: [[String]]?) throws -> [Int] {
        guard let board = board else {
            throw GameError.board_not_valid
        }
        print("Player \(name) make the move")
        return play(currentBoard: board)
    }
    func play(currentBoard: [[String]]) -> [Int] {
        var row = Int.random(in: 0..<currentBoard.count)
        var col = Int.random(in: 0..<currentBoard.count)
        while currentBoard[row][col] != " " {
            row = Int.random(in: 0..<currentBoard.count)
            col = Int.random(in: 0..<currentBoard.count)
        }
        return [row, col]
    }
}
