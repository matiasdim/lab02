//
//  main.swift
//  Lecture03Demo
//
//  Created by Jonathan Engelsma on 5/17/16.
//  Copyright © 2016 Jonathan Engelsma. All rights reserved.
//

import Foundation

var uav : UnmannedAerialVehicle =   UnmannedAerialVehicle(battery: 89)
//uav.takeOff()

uav.programmableTakeOff { (Int) -> Void in
    for i in (1...4).reverse() {
        print("Engine \(i) is powered.")
    }
    for i in (1...2).reverse() {
        print("Sonar \(i) is tested.")
    }
}

uav.goHome()

var luav : LoadedUAV = LoadedUAV(battery: 10, weight: 1000, desc:"Fancy")
luav.programmableTakeOff { (Int) -> Void in
    for i in (1...4).reverse() {
        print("Engine \(i) is powered.")
    }
    for i in (1...2).reverse() {
        print("Sonar \(i) is tested.")
    }
}

var newAuv: Helicopter = Helicopter(battery: 100, weight: 800, desc: "A very very old Helicopter", color: "Green", model: 1945)
newAuv.programmableTakeOff({
    (Int) -> Void in
    print("\n Here begins Assignment addition!! \n")
    
    for i in (1...2).reverse() {
        print("Blade \(i) is ON.")
    }
    
    print("Main Rotor Mast ready to work.")
    
    for i in (1...6).reverse() {
        print("Lights of sector \(i) are tested and They are OK.")
    }
    
    for i in (1...3).reverse() {
        
        print("Tail rotor(section \(i)) is tested and It is OK.")
    }
})