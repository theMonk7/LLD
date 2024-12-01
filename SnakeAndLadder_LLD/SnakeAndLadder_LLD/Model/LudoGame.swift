//
//  LudoGame.swift
//  SnakeAndLadder_LLD
//
//  Created by Utkarsh Raj on 01/12/24.
//

import Foundation

class LudoGame: Game {
    
    var players: [Player] = []
    var dice: DiceStrategy
    let board: Board
    let winningSize: Int
    
    init(board: Board, dice: DiceStrategy, boardSize: Int) {
        self.board = board
        self.dice = dice
        self.winningSize = boardSize
    }
    
    func play() {
        var currentPosition = 0
        while true {
            let currentPlayer = players[currentPosition]
            let positionDiff = dice.roll()
            let nextPosition = board.getNextPosition(from: currentPlayer.getPosition()+positionDiff)
            if checkWinner(position: nextPosition) {
                print("🟢 Player \(currentPlayer.getName()) WON")
                break
            }
            movePlayerTo(nextPosition, player: currentPlayer)
            currentPosition = (currentPosition+1) % players.count
        }
    }
    
    func registerPlayer(_ player: Player) {
        players.append(player)
    }
    
    func checkWinner(position: Int) -> Bool {
        
        if position == winningSize {
            return true
        }
        return false
    }
    private func movePlayerTo(_ nextPosition: Int, player: Player) {

        if nextPosition > winningSize {
            print("PLayer: \(player.getName())Out of bounds")
            return
        }
        player.setPosition(nextPosition)
        
    }
    
    
}
