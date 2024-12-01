//
//  User.swift
//  SnakeAndLadder_LLD
//
//  Created by Utkarsh Raj on 01/12/24.
//

import Foundation

protocol User {
    var name: String {get set}
    var id: UUID {get set}
    
    func getName() -> String
}
