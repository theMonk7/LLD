//
//  ParkingFloor.swift
//  ParkingLot
//
//  Created by Utkarsh Raj on 08/08/24.
//

import Foundation

class ParkingFloor {
    
    // MARK: - Properties
    private let floorID: UUID = UUID()
    private let floorName: String
    private var parkingSpotsMap: [ParkingType: [UUID: ParkingSpot]] = [:] // UUID will be parkingID
    
    
    // MARK: - Methods
    init(floorName: String, parkingSpots: [ParkingSpot]) {
        self.floorName = floorName
        addParkingSpotsToMap(spots: parkingSpots)
    }
    
    private func addParkingSpotsToMap(spots: [ParkingSpot]) {

        for spot in spots {
            
            if parkingSpotsMap[spot.getParkingType()] != nil {
                parkingSpotsMap[spot.getParkingType()]?[spot.getParkingId()] = spot
            } else {
                parkingSpotsMap[spot.getParkingType()] = [spot.getParkingId(): spot]
            }
        }
    }
    
    func parkVehicle(vehicle: Vehicle, parkingType: ParkingType) -> UUID? {
        guard let parkingSpots = parkingSpotsMap[parkingType] else {
            return nil
        }
        for parkingSpot in parkingSpots.values {
            if parkingSpot.isSpotAvialable() {
                parkingSpot.dock(vehicle: vehicle)
                print("\n\n")
                print("---------------------------------PARKING----------------")
                print("Your \(vehicle.getVehicleID()) is getting parked on floor \(floorName) and on spot \(parkingSpot.getParkingId())")
                return parkingSpot.getParkingId()
            }
        }
        return nil
    }
    
    func unparkVehicle(ticket: Ticket) {
        guard let parkedSpot = parkingSpotsMap[ticket.parkingType]?[ticket.parkingSpotId] else {
            print("OOPS, Vehicle Not found !!!")
            return
        }
        print("\n\n")
        print("---------------------------------un -PARKING----------------")
        print("Your vehicle correponding to ticket id: \(ticket.ticketID) and vehicle \(ticket.vehicleID) is getting unparked from floor \(floorName) and spot \(parkedSpot.getParkingId())")
        parkedSpot.undock()
    }
    
    func getFloorName() -> String{
        return floorName
    }
    
    func getFloorID() -> UUID {
        return floorID
    }
    
}
