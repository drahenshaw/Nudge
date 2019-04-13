//
//  CheckBoxButton.swift
//  Hope
//
//  Created by David Henshaw on 4/13/19.
//  Copyright © 2019 David Henshaw. All rights reserved.
//

import UIKit

class CheckBoxButton: UIButton {

    let checkedImage = UIImage(named: <#T##String#>)! as UIImage
    let uncheckedImage = UIImage(named: <#T##String#>)! as UIImage
    
    var isChecked: Bool = false
    {
        didSet{
            if isChecked == true
            {
                self.setImage(checkedImage, for: UIControl.State.normal)
            } else {
                self.setImage(uncheckedImage, for: UIControl.State.normal)
            }
        }
    }
    
    override func awakeFromNib() {
        self.addTarget(self, action: #selector(buttonClicked(sender:)), for: UIControl.Event.touchUpInside)
        self.isChecked = false
    }

    @objc func buttonClicked(sender: UIButton){
        if sender == self {
            isChecked = !isChecked
        }
    }
}

