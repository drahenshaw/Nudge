//
//  PathwayCell.swift
//  Hope
//
//  Created by David Henshaw on 4/13/19.
//  Copyright © 2019 David Henshaw. All rights reserved.
//

import UIKit

class PathwayCell: UITableViewCell {

    @IBOutlet weak var pathwayLabel: UILabel!
    @IBOutlet weak var CheckBoxButton: CheckBoxButton!
    
    private var isChecked: Bool = false
    
    func ConfigureCell(pathway: String)
    {
        self.pathwayLabel.text = pathway
    }

    func checkSelected() -> Bool
    {
        print(self.CheckBoxButton.isChecked)
        return self.CheckBoxButton.isChecked
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state

    }

}
