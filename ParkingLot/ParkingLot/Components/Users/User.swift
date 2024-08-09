//
//  User.swift
//  ParkingLot
//
//  Created by Utkarsh Raj on 08/08/24.
//

import Foundation

class User {
    var name: String
    var id: UUID = UUID()
    var role: UserRole
    
    init(name: String, role: UserRole) {
        self.name = name
        self.role = role
    }
}

class Admin: User {
    private let location: String
    
    init(name: String, role: UserRole,location:String) {
        self.location = location
        super.init(name: name,role: role)
    }
    
    func addParkingLot(parkingLot: ParkingLot, floorName: String, parkingSpotType: ParkingType, numberOfParkingSpots: Int) {
        parkingLot.addParkingSpots(user: self, floorName: floorName, parkingSpotType: parkingSpotType, numberOfParkingSpots: numberOfParkingSpots)
    }
    
}
