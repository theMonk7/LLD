//
//  Ladder.swift
//  SnakeAndLadder_LLD
//
//  Created by Utkarsh Raj on 01/12/24.
//

import Foundation

class Ladder: Jumper {
    let start: Int
    let end: Int
    
    init(start: Int, end: Int) {
        self.start = start
        self.end = end
    }
}
