//
//  main.swift
//  ParkingLot
//
//  Created by Utkarsh Raj on 08/08/24.
//

import Foundation

let parkingLot = ParkingLot(name: "VegaCity Parking Lot")

let admin = Admin(name: "Picasso", role: .admin, location: "Bangalore")
admin.addParkingLot(parkingLot: parkingLot, floorName: "Floor 1", parkingSpotType: .LARGE, numberOfParkingSpots: 15)
admin.addParkingLot(parkingLot: parkingLot, floorName: "Floor 2", parkingSpotType: .MEDIUM, numberOfParkingSpots: 12)
admin.addParkingLot(parkingLot: parkingLot, floorName: "Floor 3", parkingSpotType: .SMALL, numberOfParkingSpots: 35)

let marutiCar = Vehicle(vehicleNumber: "BH-12-0923", name: "Maruti", type: .SEDAN)
let ticketMaruti = parkingLot.enterParking(vehicle: marutiCar)
let fortuner = Vehicle(vehicleNumber: "BH-12-2923", name: "Frotuner", type: .SUV)
let ticketFortuner = parkingLot.enterParking(vehicle: fortuner)

let bus = Vehicle(vehicleNumber: "BH-12-22923", name: "Buss", type: .BUS)
let ticketBus = parkingLot.enterParking(vehicle: bus)
if let t = ticketMaruti {
    parkingLot.exitParking(ticket: t)
}
if let t1 = ticketFortuner {
    parkingLot.exitParking(ticket: t1)
}
if let t2 = ticketBus {
    parkingLot.exitParking(ticket: t2)
}
