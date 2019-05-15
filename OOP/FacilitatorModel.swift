//
//  FacilitatorModel.swift
//  OOP
//
//  Created by ernest aminata on 15/05/19.
//  Copyright © 2019 ernest aminata. All rights reserved.
//

import Foundation

//facilitator model mewarisi atribut dari learner model
class FacilitatorModel: LearnerModel {
    var facilitatorPerk: String
    
    init(facilName: String, facilAge: Int, facilHeight: Float, facilImageProfile: String, facilPerk: String) {
        self.facilitatorPerk = facilPerk
        //utk manggil dari kelas pewarisnya harus pake super ato menginherit dari kelas lain/model lain
        super.init(learnerName: facilName, learnerAge: facilAge, learnerHeight: facilHeight, learnerImageProfile: facilImageProfile)
    }
}
