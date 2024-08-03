//
//  WinningMode.swift
//  TicTacToe
//
//  Created by Utkarsh Raj on 03/08/24.
//

import Foundation

enum WinningMode {
    case N_Linear
    
    func getStrategy() -> WinningStrategy {
        switch (self) {
        case .N_Linear:
            return N_WinningStrategy()
        }
    }
}
