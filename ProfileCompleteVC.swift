//
//  ProfileCompleteVC.swift
//  Hope
//
//  Created by David Henshaw on 4/13/19.
//  Copyright © 2019 David Henshaw. All rights reserved.
//

import UIKit

class ProfileCompleteVC: UIViewController {

    @IBOutlet weak var expLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    private var userEXP: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //nextButton.layer.cornerRadius = 15
        
        //READ UserEXP from DB
    }
    

    @IBAction func NextButtonPressed(_ sender: Any) {
        
        userEXP += 50
        
        // WRITE EXP to DB
        
        // Perform Segue to First Nudge
        performSegue(withIdentifier: "ToNudge", sender: self)
    }
}
