//
//  Car.swift
//  swift-vehicle-lab
//
//  Created by John Hussain on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

//Create a new file for a custom class named Car that inherits from the Vehicle class

class Car: Vehicle {
    
//    an immutable String named transmission,
//    an immutable Int named cylinders, and
//    an immutable Double named milesPerGallon
    
    let transmission: String
    let cylinders: Int
    let milesPerGallon: Double
    
//    designated initializer that takes six arguments total, the three arguments for the superclass's initializer (name, weight, and maxSpeed), and three arguments for these new properties (transmission, cylinders, and milesPerGallon)
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double) {
        
        self.transmission = transmission
        self.cylinders = cylinders
        self.milesPerGallon = milesPerGallon
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
//    drive() which takes no arguments and provides no return. This method should simply call the accelerate() method inherited from the superclass
    
    func drive() {
        
       accelerate()
    }
    
//    brake() which take no arguments and provides no return. This method should simply call the decelerate() method inherited from the superclass
    
    func brake() {
        
        decelerate()
    }
    
}









