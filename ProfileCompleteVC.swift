//
//  ProfileCompleteVC.swift
//  Hope
//
//  Created by David Henshaw on 4/13/19.
//  Copyright © 2019 David Henshaw. All rights reserved.
//

import UIKit

class ProfileCompleteVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //READ UserEXP from DB
    }
    
    private var userEXP: Int
    
    

    @IBAction func NextButtonPressed(_ sender: Any) {
        
        userEXP += 50
        
        // WRITE EXP to DB
        
        // Perform Segue to First Nudge
        performSegue(withIdentifier: "ToNudge", sender: self)
    }
}
