//
//  NudgeScenarioVC.swift
//  Hope
//
//  Created by David Henshaw on 4/13/19.
//  Copyright © 2019 David Henshaw. All rights reserved.
//

import UIKit

class NudgeScenarioVC: UIViewController {

    @IBOutlet weak var nudgeTitle: UILabel!
    @IBOutlet weak var nudgeSubtitle: UILabel!
    @IBOutlet weak var nudgeScenarioStory: UITextView!
    
    @IBOutlet weak var nudgeAnswerFirst: UIButton!
    @IBOutlet weak var nudgeAnswerSecond: UIButton!
    @IBOutlet weak var nudgeAnswerThird: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // READ DB for Nudge Info and Load Labels + Buttons
    }
    
    func nudgeAnswerSelected()
    {
        // Perform Segue to Wrap Up VC
        performSegue(withIdentifier: "ToNudgeWrapUp", sender: self)
    }
    
    
    @IBAction func nudgeAnswerFirstPressed(_ sender: Any) {
        // WRITE self.nudgeAnswerFirst.titleLabel to DB
        nudgeAnswerSelected()
    }
    
    @IBAction func nudgeAnswerSecondPressed(_ sender: Any) {
        // WRITE self.nudgeAnswerSecond.titleLabel to DB
        nudgeAnswerSelected()
    }
    
    @IBAction func nudgeAnswerThirdPressed(_ sender: Any) {
        // WRITE self.nudgeAnswerThird.titleLabel to DB
        nudgeAnswerSelected()
    }
}
