//
//  WinningMode.swift
//  SnakeAndLadder
//
//  Created by Utkarsh Raj on 06/08/24.
//

import Foundation

enum WinningMode {
    case classic
    
    func winningStrategy() -> WinningStrategy {
        switch self {
            
        case .classic:
            ClassicWinningStrategy()

        }
    }
}
