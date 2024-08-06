//
//  main.swift
//  SnakeAndLadder
//
//  Created by Utkarsh Raj on 06/08/24.
//

import Foundation

let player1 = Player(name: "🤪 Player_1️⃣")
let player2 = Player(name: "😎 Player_2️⃣")

let game = SnakeAndLadderGame(boardSize: 10,winningMode: .classic, boardMode: .start_when_6)
game.registerPlayer(player: [player1,player2])

let ladder1 = Ladder(startPosition: 7, nextPosition: 19)
let ladder2 = Ladder(startPosition: 35, nextPosition: 94)
let ladder3 = Ladder(startPosition: 49, nextPosition: 79)

let snake1 = Snake(startPosition: 39, nextPosition: 2)
let snake2 = Snake(startPosition: 99, nextPosition: 8)
let snake3 = Snake(startPosition: 67, nextPosition: 42)

game.addObstacles(obstacles: [ladder1,ladder2,ladder3,snake1,snake2,snake3])

game.startGame()

