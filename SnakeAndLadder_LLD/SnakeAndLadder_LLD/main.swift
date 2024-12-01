//
//  main.swift
//  SnakeAndLadder_LLD
//
//  Created by Utkarsh Raj on 01/12/24.
//

import Foundation

let dice = NormalDice()

let ladder1 = Ladder(start: 10, end: 46)
let ladder2 = Ladder(start: 35, end: 89)
let ladder3 = Ladder(start: 56, end: 75)
let snake1 = Snake(start: 99, end: 15)
let snake2 = Snake(start: 34, end: 7)
let snake3 = Snake(start: 69, end: 39)
let jumpers: [Jumper] = [ladder1,ladder2,ladder3,snake1,snake2,snake3]
let board = LudoBoard(jumpers: jumpers)

let game = LudoGame(board: board, dice: dice,boardSize: 100)

let player1 = LudoPlayer(name: "Utkarsh")
let player2 = LudoPlayer(name: "Bhumika")
let player3 = LudoPlayer(name: "Vihika")
game.registerPlayer(player1)
game.registerPlayer(player2)
game.registerPlayer(player3)
game.play()


