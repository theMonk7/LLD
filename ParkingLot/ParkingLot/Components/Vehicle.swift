//
//  Vehicle.swift
//  ParkingLot
//
//  Created by Utkarsh Raj on 08/08/24.
//

import Foundation

class Vehicle {
    private let vehicleNumber: String
    private let name: String
    private let type: VehicleType
    
    init(vehicleNumber: String, name: String, type: VehicleType) {
        self.vehicleNumber = vehicleNumber
        self.name = name
        self.type = type
    }
    
    func getVehicleID() -> String {
        return vehicleNumber
    }
    
    func getVehicleType() -> VehicleType {
        return type
    }
}
