//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by John Hussain on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    
//    an immutable String named name,
//    an immutable Double named weight,
//    an immutable Double named maxSpeed,
//    a mutable Double named speed, and
//    a mutable Double named heading
    
    let name: String
    let weight: Double
    let maxSpeed: Double
    
    var speed: Double = 0
    var heading: Double = 0
    
//    Set the mutable properties to zero as a default.
//    Write a designated initializer that covers the three immutable properties
    
    init(name: String, weight: Double, maxSpeed: Double){
        
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
//    goFast() which sets the vehicle's speed equal to its maxSpeed.
    
    func goFast(){
        
        speed = maxSpeed
    }
    
//    halt() which sets the vehicle's speed to zero.
    
    func halt(){
        
        speed = 0
    }
    
//    accelerate() which increases the speed by one tenth (1/10th) of the vehicle's maxSpeed. This should not increase the speed beyond the maxSpeed.
    
    func accelerate(){
        
        speed += maxSpeed/10
        
        if speed > maxSpeed {
            speed = maxSpeed
        }
    }
    
//    decelerate() which decreases the speed by one tenth (1/10th) of the vehicle's maxSpeed. This should not decrease the speed below zero.
    
    func decelerate(){
        
        speed -= maxSpeed/10
        
        if speed < 0 {
            
            speed = 0
        }
    }
    
//    turnRight() which increases the heading by 90 angular degrees and cuts the speed in half (the physics of turning has a momentum cost). This method should have no effect on a stationary vehicle (a vehicle can only turn if it is moving).
    
    func turnRight() {
        
        if speed > 0 {
            
            heading = (heading + 90) % 360
            
            speed /= 2
        }
    }
    
//    Top-tip: Remember to keep the heading's value between 0 and 360.
    
//    turnLeft() which has the effect of decreasing the heading by 90 angular degrees. Similarly, this should cut the speed in half and should have no effect on a stationary vehicle.
    
    func turnLeft() {
        
        if speed > 0 {
            
            heading = (heading + 270) % 360
            
            speed /= 2
        }
    }
//    Top-tip: The modulus operator won't perform the math that you want if you simply feed it -90. You're going to have to help it figure out how to simulate a left turn
    
}
