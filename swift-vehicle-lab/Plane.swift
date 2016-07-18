//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by John Hussain on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    
//    an immutable Double named maxAltitude
//    a mutable Double named altitude
//    a calculated Bool named inFlight
    
//    altitude's initial value to zero.
    
//    Program inFlight to return True if both the speed and the altitude are greater than zero
    
    let maxAltitude: Double
    
    var altitude: Double = 0
    
    var inFlight: Bool { return speed > 0 && altitude > 0 }
    
    //{
    //if speed > 0 && altitude > 0 {
    //return true
    //}else {
    //return false
    //}
    //}

//    designated initializer that takes four arguments, three for the superclass's properties and one for maxAltitude
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        
        self.maxAltitude = maxAltitude
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
//    takeoff() which only affects a plane that is not in flight. This method should set the speed and altitude properties to one tenth (1/10th) of their maximums
    
    func takeoff() {
        
        if inFlight == false {
            
            speed = maxSpeed/10
            altitude = maxAltitude/10
        }
    }
    
    
//    land() which sets the speed and altitude properties to zero
    
    func land() {
        
        speed = 0
        altitude = 0
    }
    
    
//    climb() which increases the altitude by one tenth (1/10th) of the plane's maxAltitude and causes the plane to decelerate. This method should not increase the altitude beyond the maxAltitude and can only be performed when the plane is in flight
    
    func climb() {
        
        if inFlight == true {
            
            altitude += maxAltitude/10
            
            if altitude > maxAltitude {
                
                altitude = maxAltitude
            }
            
            decelerate()
        }
    }
    
    
//    dive() which decreases the altitude by one tenth (1/10th) of the plane's maxAltitude and causes the plane to accelerate. This method should not decrease the altitude below zero and can only be performed if the plane is not already on the ground. However, if the plane's speed is zero, it is still in the air but has "stalled" and is still able to perform a dive in order to convert altitude into speed
    
    func dive() {
        
        if altitude > 0 {
            
            altitude -= maxAltitude/10
            
            if altitude < 0 {
                
                altitude = 0
            }
            
            accelerate()
        }
    }
    
    
//    bankRight() which increases the heading by 45 angular degrees but only decreases the speed by one tenth (1/10th) of its current value. This method can only be performed by a plane that is in flight
    
    func bankRight() {
        
        if inFlight == true {
            
            heading = (heading + 45) % 360
            
            speed -= speed/10
        }
        
    }
    
    
//    bankLeft() which has the effect of decreasing the heading by 45 angular degrees, but only decreases the speed by one tenth (1/10th) of its current value. This method can only be performed by a plane that is in flight
    
    func bankLeft() {
        
        if inFlight == true {
            
            heading = (heading + 315) % 360
            
            speed -= speed/10
        }
    }
}
