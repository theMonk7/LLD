//
//  main.swift
//  Pen_LLD
//
//  Created by Utkarsh Raj on 02/08/24.
//

import Foundation


let fPen = FountainPen(ink: Ink(color: "blue", type: .Fountain), brand: "Lnkoho", name: "pisso", price: 12, type: .FOUNTAIN, writingStrategy: RoughWritingStrategy())
fPen.write()

let gelPen = GelPen(brand: "Reynolds", name: "R10", price: 10, refill: Refill(name: "Roreto", ink: Ink(color: "blue", type: .Gel), nib: Nib(radius: 1)) , writingStrategy: SmoothWritingStrategy())

gelPen.write()
