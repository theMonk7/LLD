//
//  ParkingLot.swift
//  ParkingLot
//
//  Created by Utkarsh Raj on 08/08/24.
//

import Foundation

class ParkingLot {
    
    // MARK: - Properties
    private var id: UUID = UUID()
    private var parkingFloors: [ParkingFloor] = []
    private var name: String
    
    init(name: String) {
        self.name = name
    }
    // MARK: - Methods
    
    // MARK: Exposed Methods
    func enterParking(vehicle: Vehicle) -> Ticket? {
        let parkingType = getParkingType(vehicle: vehicle)
        for floor in parkingFloors {
            if let parkedSpotID = floor.parkVehicle(vehicle: vehicle, parkingType: parkingType) {
                // generate Ticket
                return TickerGenerator.shared.generateTicket(parkingSpotId: parkedSpotID, vehicleID: vehicle.getVehicleID(), floorId:  floor.getFloorID(), parkingType: parkingType)
            }
        }
        print("No parking Spots available")
        return nil
        
    }
    func exitParking(ticket: Ticket) {

        // unpark the vehicle from the spot
        if let parkedFloor = parkingFloors.filter({ $0.getFloorID() == ticket.floorID }).first {
            parkedFloor.unparkVehicle(ticket: ticket)
        }
        
        // calculate the amount to be paid
        let amountToBePaid = self.calculateBill(startTime: ticket.entryTime, parkingType: ticket.parkingType)
        print("You need to pay $\(amountToBePaid) 💵")
    }
    
    func addParkingSpots(user: User, floorName: String, parkingSpotType: ParkingType, numberOfParkingSpots: Int) {
        guard user.role == .admin else {
            print("You dont have required access")
            return
        }
        var parkingSpots: [ParkingSpot] = []
        for _ in 0..<numberOfParkingSpots {
            let parkingSpot = ParkingSpot(parkingType: parkingSpotType)
            parkingSpots.append(parkingSpot)
        }
        let floor = ParkingFloor(floorName: floorName, parkingSpots: parkingSpots)
        parkingFloors.append(floor)
        print("New Parking Floor:: \(floor.getFloorName()) added to floors")
    }
    
    func payAmount(amount: Double) {
        print("You paid \(amount)")
        print("Thanks for visiting")
    }
    
    
    // MARK: PRIVATE METHODS
    private func getParkingType(vehicle: Vehicle) -> ParkingType {
        let vehicleType = vehicle.getVehicleType()
        return vehicleType.getParkingType()
    }
    
    private func calculateBill(startTime: Date, parkingType: ParkingType) -> Double {

        
        let differenceInTime = Date.now.timeIntervalSince(startTime) 
        print("You stayed for \(differenceInTime) units ⏳")
        return Double(differenceInTime)*parkingType.getRates()
    }
    
}
