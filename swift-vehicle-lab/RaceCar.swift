//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by John Hussain on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
    
//    an immutable String named driver, and
//    a mutable array of type String named sponsors
    
    let driver: String
    
    var sponsors: [String]
    
//    designated initializer should accept eight (8) arguments total, six for the superclass's initializer, and two for the new properties
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String])
    {
    
        self.driver = driver
        self.sponsors = sponsors
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
//    Override the accelerate() method that is inherited from the Vehicle class. It should increase the speed by one fifth (1/5th) of the maxSpeed. However, it should not increase the speed beyond the maxSpeed
    
    override func accelerate() {
        
        speed += maxSpeed/5
        
        if speed > maxSpeed {
            
            speed = maxSpeed
        }
    }
    
//    Override the decelerate() method that is also inherited from the Vehicle class. It should decrease the speed by one fifth (1/5th) of the maxSpeed. However, it should not decrease the speed below zero
    
    override func decelerate() {
        
        speed -= maxSpeed/5
        
        if speed < 0 {
            
            speed = 0
        }
    }
    
//    new method named driftRight() which takes no arguments and provides no return. If the race car is in motion, it should increase the heading by 90 angular degrees, but only decrease the speed by one quarter (1/4) of its current value
    
    func driftRight() {
        
        if speed > 0 {
            
            heading = (heading + 90) % 360
            
            speed -= speed/4
        }
    }
    
//    new method named driftLeft() which takes no arguments and provides no return. If the race car is in motion, it should have the effect of decreasing the heading by 90 angular degrees only decrease the speed by one quarter (1/4) of its current value
    
    func driftLeft() {
        
        if speed > 0 {
            
            heading = (heading + 270) % 360
            
            speed -= speed/4
        }
    }
}






