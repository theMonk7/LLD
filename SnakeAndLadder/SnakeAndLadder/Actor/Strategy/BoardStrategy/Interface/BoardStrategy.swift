//
//  BoardStrategy.swift
//  SnakeAndLadder
//
//  Created by Utkarsh Raj on 06/08/24.
//

import Foundation

protocol BoardStrategy {
    func canStart(currentPosition:Int, dice: Int) -> Bool
}
