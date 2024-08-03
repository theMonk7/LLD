//
//  main.swift
//  TicTacToe
//
//  Created by Utkarsh Raj on 03/08/24.
//

import Foundation

print("-1-1-1-1-1-1-1-1 Welcome to the TickTacToe -1-1-1-1-1-1-1-1-1-")
let matrixSize = 3

let game = TicTacToeGame(matrixSize: matrixSize, winningMode: .N_Linear)
game.registerPlayer(name: "Player_1", symbol: .X)


/// Uncomment below for 2 player game
//game.registerPlayer(name: "Player_2", symbol: .O)

game.startGame()
