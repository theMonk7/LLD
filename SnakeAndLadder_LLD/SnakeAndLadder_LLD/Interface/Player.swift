//
//  Player.swift
//  SnakeAndLadder_LLD
//
//  Created by Utkarsh Raj on 01/12/24.
//

import Foundation

protocol Player: User {
    func getPosition() -> Int
    func setPosition(_ to: Int)
}
