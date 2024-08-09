//
//  Ticket.swift
//  ParkingLot
//
//  Created by Utkarsh Raj on 08/08/24.
//

import Foundation

struct Ticket {
    let ticketID: UUID = UUID()
    let parkingSpotId: UUID
    let vehicleID: String
    let parkingType: ParkingType
    let entryTime: Date
    let floorID: UUID
    
    init(parkingSpotId: UUID, vehicleID: String, parkingType: ParkingType, floorID: UUID) {
        self.parkingSpotId = parkingSpotId
        self.vehicleID = vehicleID
        self.parkingType = parkingType
        self.entryTime = Date.now
        self.floorID = floorID
    }
}

