//
//  ParkingError.swift
//  ParkingLot
//
//  Created by Utkarsh Raj on 08/08/24.
//

import Foundation

enum ParkingError:String,  Error, LocalizedError {
    case rere = "fdfd"
    
    
    
    var errorDescription: String? {
        switch self {
        case _ :
            return self.rawValue
        }
    }
}
