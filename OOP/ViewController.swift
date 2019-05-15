//
//  ViewController.swift
//  OOP
//
//  Created by ernest aminata on 15/05/19.
//  Copyright © 2019 ernest aminata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var learnerNameLabel: UILabel!
    @IBOutlet weak var leanerAgeLabel: UILabel!
    @IBOutlet weak var learnerHeightLabel: UILabel!
    
    @IBOutlet weak var lampOnOff: UISwitch!
    
    @IBOutlet weak var doorLabel: UILabel!
    @IBOutlet weak var windowLabel: UILabel!
    @IBOutlet weak var lampStatusLabel: UILabel!
    
    
    var learnerInstance: LearnerModel?
    var houseInstance: HouseModel?
    var facilitatorInstance: FacilitatorModel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       learnerInstance = LearnerModel(learnerName: "Ernest", learnerAge: 24, learnerHeight: 156.0, learnerImageProfile: "")
        
        houseInstance = HouseModel(doorInHouse: 3, windowInHouse: 5, lampInHouse: true, statusLampInHouse: "Your house is bright")
        
        facilitatorInstance = FacilitatorModel(facilName: "David", facilAge: 23, facilHeight: 175.0, facilImageProfile: "", facilPerk: "Free flow Starbuck")
        
       updateUI()
        updateHouseUI()
        
        
    }
    
    func updateHouseUI(){
        if let property = houseInstance{
            doorLabel.text = "\(property.door)"
            windowLabel.text = "\(property.window)"
            lampStatusLabel.text = "\(property.statusLamp)"
            
        }
    }
    
    func updateUI() {
        if let instance = learnerInstance{
        learnerNameLabel.text = instance.name
        leanerAgeLabel.text = "\(instance.age)"
        learnerHeightLabel.text = "\(instance.height)"
        }
    }
    
    @IBAction func increaseAgeButtonClicked(_ sender: UIButton) {
        if let instance = learnerInstance {
            instance.increaseAge()
            updateUI()
        }
    }
    @IBAction func lampSwitch(_ sender: Any) {
        if let property = houseInstance{
            if lampOnOff.isOn == true{
                property.lamp = true
            }
            else{
                property.lamp = false
            }
            property.turnOnLamp()
            updateHouseUI()
        }
    }
}
