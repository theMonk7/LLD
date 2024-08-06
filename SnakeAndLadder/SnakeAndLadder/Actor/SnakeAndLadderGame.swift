//
//  SnakeAndLadderGame.swift
//  SnakeAndLadder
//
//  Created by Utkarsh Raj on 06/08/24.
//

import Foundation
import Collections

class SnakeAndLadderGame {
    private var board: Board
    private var players: Deque<Player> = []
    private var dice: Dice
    private var winningStrategy: WinningStrategy
    
    init(boardSize: Int = 10, winningMode: WinningMode, boardMode: BoardMode) {
        self.board = Board(size: boardSize, boardMode: boardMode)
        self.dice = Dice()
        self.winningStrategy = winningMode.winningStrategy()
        
    }
    
    func addObstacles(obstacles: [Jumper]) {
        for obstacle in obstacles {
            board.addObstacles(obstacle: obstacle)
        }
    }
    
    func registerPlayer(player: Player) {
        players.append(player)
    }
    func registerPlayer(player: [Player]) {
        players += player
    }
    
    func startGame() {
        print("-------------GAME Starts---------------")
        makeMove()
    }
    
    private func makeMove()  {
        // keep playing the game until we have a winner
        while true {
            
            do {
                // we take the player whose turn has arrived as per Queue
                guard let currentPlayer = players.popFirst() else {
                    throw GameError.NO_PLAYER
                }
                // person rolls the dice
                print("\n\n\n\n")
                print("-------^^^^^^Player\(currentPlayer.name) Rolling ^^^^^^^----------------")
                
                let jumpDistance = dice.roll()
                try board.movePlayer(player: currentPlayer, by: jumpDistance)
            
                // check winner after the move is played
                if winningStrategy.checkWinner(player: currentPlayer, board: board) {
                    print("-------------Congratualtions, \(currentPlayer.name) is the WINNER-----------")
                    return
                }

                // player turn over, go to last in queue for next turn even in case of exceptions
                players.append(currentPlayer)
            } catch let err {
                print(err.localizedDescription)
            }
        }
        
    }
    
}
