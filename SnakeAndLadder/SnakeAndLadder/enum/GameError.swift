//
//  GameError.swift
//  SnakeAndLadder
//
//  Created by Utkarsh Raj on 06/08/24.
//

import Foundation

enum GameError: String, Error, LocalizedError {
    case OUT_OF_BOUNDS = "You are trying to go out of bounds"
    case NO_PLAYER = "Please enter players"
    
    var errorDescription: String? {
        switch (self) {
        case .NO_PLAYER,.OUT_OF_BOUNDS:
            return self.rawValue
        }
    }
}
