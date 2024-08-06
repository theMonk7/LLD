//
//  TicTacToeGame.swift
//  TicTacToe
//
//  Created by Utkarsh Raj on 03/08/24.
//

import Foundation
import Collections

class TicTacToeGame {
    
    // MARK: - Properties
    private var players: Deque<Player> = []
    private(set) var board: Board
    private(set) var winningStrategy: WinningStrategy
    
    init(matrixSize: Int, winningMode: WinningMode) {
        self.board = Board(row: matrixSize, col: matrixSize)
        self.winningStrategy = winningMode.getStrategy()
    }
    
    // MARK: - Methods
    func registerPlayer(name: String, symbol: GameSymbol) {
        self.players.append(HumanPlayer(name: name, id: UUID(), symbol: symbol))
    }
    
    func startGame() {
        if players.count != 2 {
            // start the game logic here
            
            guard let botSymbol = getBotSymbol() else {
                print("All symbols are alloted")
                return
            }
            print("You are up against a smart BOT")
            let botPlayer = BotPlayer(symbol: botSymbol)
            self.players.append(botPlayer)
        }
        print("---------------GAME STARTS-------------")
        self.makeMove()
    }
    
    private func getBotSymbol() -> GameSymbol? {
        let allSymbol = GameSymbol.allCases
        let playerSymbols: [GameSymbol] = players.map { $0.symbol }
        print(playerSymbols, allSymbol
        )
        for sym in allSymbol {
            if !playerSymbols.contains(sym) {
                return sym
            }
        }
        return nil
    }
    
    private func makeMove() {
        var markedCount = 0
        while (true) {
            let currentPlayer = players[0]
            var coordinates: [Int] = []
            
            do {

                coordinates = try currentPlayer.makeMove(board: board.boardMatrix)
                
                try board.markCell(x: coordinates[0], y: coordinates[1], symbol: currentPlayer.symbol)
                markedCount += 1
                
                if winningStrategy.checkWinner(matrix: board.boardMatrix, player: currentPlayer, x: coordinates[0], y: coordinates[1]) {
                    print("player \(currentPlayer.name) WON")
                    return
                }
                if markedCount == board.numberOfCols() * board.numberOfRows() {
                    print("`-`---`-``--`-`-`MATCH DRAW -`-`-`-`-`")
                    return
                }
                if let currPlayer = players.popFirst() {
                    players.append(currPlayer)
                }
                
            } catch let err {
                print(err.localizedDescription)
            }
            
        }
    }
    
    
}
