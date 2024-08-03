//
//  Error.swift
//  TicTacToe
//
//  Created by Utkarsh Raj on 03/08/24.
//

import Foundation
enum GameError: String, Error, LocalizedError {
    case out_of_bounds = "Input out of bounds, Retry"
    case already_filled = "Position is already filled, Retry"
    case invalid_input = "Enter a valid input with space separated two integers, Retry"
    case board_not_valid = "Please enter a board to play on"
    var errorDescription: String? {
        switch (self) {
        case .out_of_bounds, .already_filled, .invalid_input, .board_not_valid:
            return self.rawValue
        }
    }
}
