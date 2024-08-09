//
//  ParkingType.swift
//  ParkingLot
//
//  Created by Utkarsh Raj on 08/08/24.
//

import Foundation


enum ParkingType:String, Hashable {
    case SMALL
    case MEDIUM
    case LARGE
    
    func getRates() -> Double {
        switch self {
        case .SMALL:
            return 10
        case .MEDIUM:
            return 25
        case .LARGE:
            return 50
        }
    }
}
