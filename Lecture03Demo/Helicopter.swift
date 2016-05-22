//
//  Helicopter.swift
//  Lecture03Demo
//
//  Created by Matías  Gil Echavarría on 5/17/16.
//  Copyright © 2016 Jonathan Engelsma. All rights reserved.
//
//  *********************************************
//  ***** Authors: Matias Gil - Vinvith Mudugonda
//  *********************************************

import Foundation

class Helicopter : LoadedUAV {
    var color :String
    var model :Int
    // Why cant add model here
    convenience init(battery: Int, weight: Int, desc: String?, color: String) {
        self.init(battery: battery, weight: weight, desc: desc, color:color, model: 10)
    }
    
    init(battery: Int, weight: Int, desc: String?, color: String, model: Int) {
        self.color = color
        self.model = model
        super.init(battery: battery, weight: weight, desc: desc)
    }
    
    override func programmableTakeOff(instructions: (Int) -> Void) {
        instructions(self.batteryCharge)
        if (self.model < 1960 && self.payloadWeight >= 800){
            var extraString :String = "";
            if (self.color == "Green"){
                extraString = ", and actually this \(self.color) color is so ugly"
            }
            print("This helicopter is too old to carry that load\(extraString). The take off has stopped")
        }else{
            print("This helicopter from \(model) is ready to take off with a total weight of: \(self.payloadWeight). Succes!")
        }
        
    }
}