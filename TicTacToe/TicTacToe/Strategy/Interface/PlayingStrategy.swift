//
//  PlayingStrategy.swift
//  TicTacToe
//
//  Created by Utkarsh Raj on 03/08/24.
//

import Foundation

protocol BotPlayingStrategy {
    func play(currentBoard: [[String]]) -> [Int]
}
