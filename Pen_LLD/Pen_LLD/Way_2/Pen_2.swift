//
//  Pen_2.swift
//  Pen_LLD
//
//  Created by Utkarsh Raj on 02/08/24.
//

import Foundation

enum PenType {
    case GEL
    case BALL
    case FOUNTAIN
    case THROW_AWAY
}
enum InkType {
    case Gel
    case Ball
    case Fountain
}
class Ink {
    var color: String
    var type : InkType
    init(color: String, type: InkType) {
        self.color = color
        self.type = type
    }
}

class Nib {
    var radius: Double
    init(radius: Double) {
        self.radius = radius
    }
}

class Refill {
    let name: String
    let ink : Ink
    let nib : Nib
    init(
        name: String,
        ink: Ink,
        nib: Nib
    ) {
        self.name = name
        self.ink  = ink
        self.nib  = nib
    }
}
protocol WritingStrategy {
    func write()
    
}

class SmoothWritingStrategy : WritingStrategy {
    func write() {
        print("this writes smoothly")
    }
}

class RoughWritingStrategy : WritingStrategy {
    func write() {
        print("this writes roughly")
    }
}


protocol Pen_2 {
    
    // MARK:  Properties
    var brand: String { get }
    var name : String { get }
    var price: Double { get }
    var type : PenType{ get }
    var writingStrategy: WritingStrategy { get }
    
    // MARK:  Methods
    func write()
}

protocol Refillable {
    var refill: Refill { get }
    
    func isRefillable() -> Bool
    func refillPen(refil: Refill)
}

protocol NonRefillable {
    var ink: Ink { get }
    func isInkOver() -> Bool
    func fillInk(ink: Ink)
}

class GelPen: Pen_2, Refillable {
    var writingStrategy: WritingStrategy
    var refill: Refill
    var brand: String
    var name : String
    var price: Double
    var type : PenType
    
    init(brand: String, name: String, price: Double, refill: Refill, writingStrategy: WritingStrategy, type: PenType = .GEL) {
        self.brand = brand
        self.name  = name
        self.price = price
        self.type  = type
        self.refill = refill
        self.writingStrategy = writingStrategy
    }
    
    func write() {
        print("this is Gel pen writing")
        writingStrategy.write()
    }
    
    func isRefillable() -> Bool {
        return true
    }
    
    func refillPen(refil: Refill) {
        self.refill = refil
    }
}
class FountainPen: Pen_2, NonRefillable {
    var ink: Ink
    var brand: String
    var name: String
    var price: Double
    var type: PenType
    var writingStrategy: WritingStrategy
    
    init(ink: Ink, brand: String, name: String, price: Double, type: PenType, writingStrategy: WritingStrategy) {
        self.ink = ink
        self.brand = brand
        self.name = name
        self.price = price
        self.type = type
        self.writingStrategy = writingStrategy
    }
    func write() {
        print("this is the Fountain Pen Writing")
        writingStrategy.write()
    }
    
    func isInkOver() -> Bool {
        return Bool.random()
    }
    
    func fillInk(ink: Ink) {
        
    }
    
}


