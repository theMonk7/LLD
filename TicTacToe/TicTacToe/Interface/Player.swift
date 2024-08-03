//
//  Player.swift
//  TicTacToe
//
//  Created by Utkarsh Raj on 03/08/24.
//

import Foundation

protocol Player {
    var symbol: GameSymbol {get}
    var name: String { get }
    func isABot() -> Bool
    func makeMove(board: [[String]]?) throws -> [Int]
}
extension Player {
    func isABot() -> Bool {
        return false
    }
}
