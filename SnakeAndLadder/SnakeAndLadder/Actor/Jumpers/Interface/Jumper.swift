//
//  Jumper.swift
//  SnakeAndLadder
//
//  Created by Utkarsh Raj on 06/08/24.
//

import Foundation

protocol Jumper {
    func getNextPosition() -> Int
    func getStartPosition() -> Int
    func getName() -> String
}

