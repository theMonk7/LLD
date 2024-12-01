//
//  Board.swift
//  SnakeAndLadder_LLD
//
//  Created by Utkarsh Raj on 01/12/24.
//

import Foundation

protocol Board {
    var players: [Player] { get set }
    func start()
}
