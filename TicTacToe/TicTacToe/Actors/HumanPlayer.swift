//
//  HumanPlayer.swift
//  TicTacToe
//
//  Created by Utkarsh Raj on 03/08/24.
//

import Foundation

class HumanPlayer: User, Player {
    var name: String
    var id: UUID
    var symbol: GameSymbol
    
    init(name: String, id: UUID = UUID(), symbol: GameSymbol) {
        self.name = name
        self.id = id
        self.symbol = symbol
    }
    
    func makeMove(board: [[String]]? = nil) throws -> [Int] {
        print("Player \(name) make the move")
        let input = readLine() ?? ""
        do {
            return try extractCoordinates(input: input)
        } catch let err {
            throw err
        }
    }
    
    private func extractCoordinates(input: String) throws -> [Int] {
        let inputArr = input.split(separator: " ")
        let coordinates = inputArr.compactMap { Int($0) }
        if coordinates.count != 2 {
            throw GameError.invalid_input
        }
        return coordinates
    }
}
