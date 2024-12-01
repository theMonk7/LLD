//
//  main.swift
//  SnakeAndLadder_LLD
//
//  Created by Utkarsh Raj on 01/12/24.
//

import Foundation

let dice = NormalDice()
let board = LudoBoard(dice: dice, size: 200)

let player1 = LudoPlayer(name: "Utkarsh")
let player2 = LudoPlayer(name: "Bhumika")

board.registerPlayer(player1)
board.registerPlayer(player2)

let ladder1 = Ladder(start: 10, end: 46)
let ladder2 = Ladder(start: 35, end: 89)
let ladder3 = Ladder(start: 56, end: 75)

board.addJumper(jumper: ladder1)
board.addJumper(jumper: ladder2)
board.addJumper(jumper: ladder3)

let snake1 = Snake(start: 99, end: 15)
let snake2 = Snake(start: 34, end: 7)
let snake3 = Snake(start: 69, end: 39)
board.addJumper(jumper: snake1)
board.addJumper(jumper: snake2)
board.addJumper(jumper: snake3)

board.start()


