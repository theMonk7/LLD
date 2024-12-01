//
//  Board.swift
//  SnakeAndLadder_LLD
//
//  Created by Utkarsh Raj on 01/12/24.
//

import Foundation

protocol Board {
    var jumpersMap: [Int: Int] { get set }
    func getNextPosition(from newPosition: Int) -> Int
}
