//
//  TickerGenerator.swift
//  ParkingLot
//
//  Created by Utkarsh Raj on 08/08/24.
//

import Foundation

class TickerGenerator {
    
    static let shared = {
        return TickerGenerator()
    }()
    
    private init() {}
    
    func generateTicket(parkingSpotId: UUID, vehicleID: String,floorId: UUID, parkingType: ParkingType) -> Ticket {
        return Ticket(parkingSpotId: parkingSpotId, vehicleID: vehicleID, parkingType: parkingType, floorID: floorId)
    }
}
