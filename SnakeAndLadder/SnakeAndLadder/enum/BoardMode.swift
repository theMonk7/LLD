//
//  BoardMode.swift
//  SnakeAndLadder
//
//  Created by Utkarsh Raj on 06/08/24.
//

import Foundation

enum BoardMode: Int {
    case start_when_1 = 1
    case start_when_6 = 6
    
    func getBoardStartStrategy() -> BoardStrategy {
        switch self {
        case .start_when_1, .start_when_6:
            return ClassicStartStrategy(startNumber: self.rawValue)
        }
    }
    
}
