//
//  NudgeCompleteVC.swift
//  Hope
//
//  Created by David Henshaw on 4/13/19.
//  Copyright © 2019 David Henshaw. All rights reserved.
//

import UIKit

class NudgeCompleteVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func NextNudgePressed(_ sender: Any) {
        performSegue(withIdentifier: "ToNextNudge", sender: self)
    }
    
    @IBAction func DoneButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "ToFinished", sender: self)
    }
}
