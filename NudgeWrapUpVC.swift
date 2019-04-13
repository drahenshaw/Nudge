//
//  NudgeWrapUpVC.swift
//  Hope
//
//  Created by David Henshaw on 4/13/19.
//  Copyright © 2019 David Henshaw. All rights reserved.
//

import UIKit

class NudgeWrapUpVC: UIViewController {

    @IBOutlet weak var nudgeWrapUpSubtitle: UILabel!
    @IBOutlet weak var nudgeWrapUpStory: UITextView!
    @IBOutlet weak var nudgeTakeAway: UITextView!
    @IBOutlet weak var nudgeSource: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func NextButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "NudgeComplete", sender: self)
    }

}
