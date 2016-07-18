//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by John Hussain on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    
//    Override the climb() method to increase the jet's altitude by one fifth (1/5) of the maxAltitude (instead of one tenth). Similar to the superclass's implementation, this method should decelerate the plane, should not increase the altitude beyond the maxAltitude, and can only be performed by a jet that is in flight.
    
    override func climb() {
        
        if inFlight == true {
            
            altitude += maxAltitude/5
            
            if altitude > maxAltitude {
                
                altitude = maxAltitude
            }
            
            decelerate()
        }
        
        
    }
    
    
    
//    Override the dive() method to decrease the jet's altitude by one fifth (1/5) of the maxAltitude (instead of one tenth). Similar to the superclass's implementation, this method should accelerate the plane, should not decrease the altitude below zero, and can only be performed by a jet that is in flight
    
    override func dive() {
        
        if altitude > 0 {
            
            altitude -= maxAltitude/5
            
            if altitude < 0 {
                
                altitude = 0
            }
            
            accelerate()
        }
    }
    
//    Write a new method named afterburner() which takes no arguments and provides no return. This method should set the speed to twice the value of the jet's maxSpeed but only if the jet is in flight and already traveling at its maximum speed
    
    func afterburner() {
        
        if inFlight == true{
            
            if speed == maxSpeed {
                
                speed = maxSpeed * 2
            }
        }
    }
}
