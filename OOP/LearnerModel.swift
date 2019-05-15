//
//  LearnerModel.swift
//  OOP
//
//  Created by ernest aminata on 15/05/19.
//  Copyright © 2019 ernest aminata. All rights reserved.
//

import Foundation

class LearnerModel: NSObject {
    var name: String
    var age: Int
    var height: Float
    var imageProfile: String
    
    init(learnerName: String, learnerAge: Int, learnerHeight: Float, learnerImageProfile: String) {
        self.name = learnerName
        self.age = learnerAge
        self.height = learnerHeight
        self.imageProfile = learnerImageProfile
    }
    
    func increaseAge() {
        age += 1
    }
    
}
