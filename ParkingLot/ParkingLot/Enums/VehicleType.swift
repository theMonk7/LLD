//
//  VehicleType.swift
//  ParkingLot
//
//  Created by Utkarsh Raj on 08/08/24.
//

import Foundation

enum VehicleType: Hashable {
    case SUV
    case SEDAN
    case BIKE
    case CYCLE
    case BUS
    case TRUCK
    case LORRY
    
    func getParkingType() -> ParkingType {
        switch self {
        case .SEDAN,.SUV:
            return .MEDIUM
        case .BIKE,.CYCLE:
            return .SMALL
        case .BUS,.LORRY,.TRUCK:
            return .LARGE
        }
    }
}
