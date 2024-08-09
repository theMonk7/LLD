//
//  ParkingSpot.swift
//  ParkingLot
//
//  Created by Utkarsh Raj on 08/08/24.
//

import Foundation

class ParkingSpot {
    private let id: UUID = UUID()
    private let parkingType: ParkingType
    private var vehicle: Vehicle?
    
    init(parkingType: ParkingType, vehicle: Vehicle? = nil) {
        self.parkingType = parkingType
        self.vehicle = vehicle
    }
    
    func isSpotAvialable() -> Bool {
        return vehicle == nil
    }
    
    func getParkingId() -> UUID {
        return id
    }
    
    func dock(vehicle: Vehicle) {
        self.vehicle = vehicle
    }
    
    func getParkingType() ->ParkingType {
        return parkingType
    }
    func undock() {
        vehicle = nil
    }
}
