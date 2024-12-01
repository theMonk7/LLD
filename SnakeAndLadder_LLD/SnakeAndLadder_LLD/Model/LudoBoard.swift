//
//  LudoBoard.swift
//  SnakeAndLadder_LLD
//
//  Created by Utkarsh Raj on 01/12/24.
//

import Foundation

class LudoBoard: Board {
    var positions: [Int: Jumper] = [:]
    var players: [Player] = []
    var dice: DiceStrategy
    let boardSize: Int
    var winners: [Player] = []
    
    init(dice: DiceStrategy,size: Int) {
        self.dice = dice
        self.boardSize = size
    }
    
    
    func registerPlayer(_ player: Player) {
        players.append(player)
    }
    func addJumper(jumper: Jumper) {
        positions[jumper.start] = jumper
    }
    
    func start() {
        while true {
            let currentPlayer = players.removeFirst()
            let positionDiff = currentPlayer.roll(dice)
            if checkWinner(player: currentPlayer, diceRoll: positionDiff) {
                break
            }
            movePlayerTo(positionDiff, player: currentPlayer)
            players.append(currentPlayer)
        }
    }
    
    func checkWinner(player: Player, diceRoll: Int) -> Bool {
        
        if player.getPosition() + diceRoll == boardSize {
            print("🟢 Player \(player.getName()) WON")
            return true
        }
        return false
    }
    private func movePlayerTo(_ diff: Int, player: Player) {
        var newPosition = player.getPosition() + diff
        if let jumper = positions[newPosition] {
            print("🔴 Player \(player.getName()) encountered a jumper")
            newPosition = jumper.end
        }
        if newPosition > boardSize {
            print("PLayer: \(player.getName())Out of bounds")
            return
        }
        player.setPosition(newPosition)
        
    }
    
    
}
