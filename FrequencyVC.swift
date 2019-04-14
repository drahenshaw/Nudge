//
//  FrequencyVC.swift
//  Hope
//
//  Created by David Henshaw on 4/13/19.
//  Copyright © 2019 David Henshaw. All rights reserved.
//

import UIKit

class FrequencyVC: UIViewController {

    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nextButton.layer.cornerRadius = 15
    }
    
    
    @IBAction func NudgeLevelSliderChanged(_ sender: UISlider) {
        sender.setValue(sender.value.rounded(.down), animated: true)
    }
    
    @IBAction func NextButtonPressed(_ sender: Any) {
        
        // WRITE Frequency to User Settings
        
        // Perform Segue to Rewards Screen
        performSegue(withIdentifier: "ProfileComplete", sender: self)
    }
    
}
