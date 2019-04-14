//
//  NudgeCompleteVC.swift
//  Hope
//
//  Created by David Henshaw on 4/13/19.
//  Copyright © 2019 David Henshaw. All rights reserved.
//

import UIKit

class NudgeCompleteVC: UIViewController {

    @IBOutlet weak var leftButtonDone: UIButton!
    @IBOutlet weak var rightButtonNext: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        leftButtonDone.layer.cornerRadius = 15
        rightButtonNext.layer.cornerRadius = 15
    }
    
    @IBAction func NextNudgePressed(_ sender: Any) {
        performSegue(withIdentifier: "ToNextNudge", sender: self)
    }
    
    @IBAction func DoneButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "ToFinished", sender: self)
    }
}
