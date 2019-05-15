//
//  HouseModel.swift
//  OOP
//
//  Created by ernest aminata on 15/05/19.
//  Copyright © 2019 ernest aminata. All rights reserved.
//

import Foundation

class HouseModel: NSObject {
    var door: Int
    var window: Int
    var lamp: Bool
    var statusLamp: String
    
    
    init(doorInHouse: Int, windowInHouse: Int, lampInHouse: Bool, statusLampInHouse: String) {
        self.door = doorInHouse
        self.window = windowInHouse
        self.lamp = lampInHouse
        self.statusLamp = statusLampInHouse
    }
    
    func turnOnLamp (){
        if lamp == true {
            statusLamp = "Your house is bright"
        } else {
            statusLamp = "Your house is dark"
        }
    }
}
