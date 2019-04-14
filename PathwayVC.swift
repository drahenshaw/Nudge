//
//  PathwayVC.swift
//  Hope
//
//  Created by David Henshaw on 4/13/19.
//  Copyright © 2019 David Henshaw. All rights reserved.
//

import UIKit

class PathwayVC: UIViewController {
    
    @IBOutlet var pathwayTableView: UITableView!
    @IBOutlet weak var nextButton: UIButton!
    
    // Array of Pathways from DB
    var pathways = [String]()
    
    // Selected Pathways
    var selectedPathways = [Bool]()
    
    // Final Pathway
    var finalPathway = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        pathwayTableView.delegate = self
        pathwayTableView.dataSource = self
        
        nextButton.layer.cornerRadius = 15
    }
    
    @IBAction func NextButtonPressed(_ sender: Any) {
        let cells = self.pathwayTableView.visibleCells as! Array<PathwayCell>
        
        for cell in cells {
            if cell.accessoryType == .checkmark {
                finalPathway.append(cell.pathwayLabel.text!)
            }
        }
        
        performSegue(withIdentifier: "Notification", sender: self)
    }
    
}

extension PathwayVC: UITableViewDelegate, UITableViewDataSource{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pathways.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PathwayCell") as? PathwayCell else {return UITableViewCell()}
        let pathType = "Default Type"
    
        cell.ConfigureCell(pathway: pathType)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! PathwayCell
        
        cell.accessoryType = .checkmark
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
        selectedPathways[indexPath.row] = !selectedPathways[indexPath.row]
    }
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        if let selectedRow = tableView.indexPathForSelectedRow,
            selectedRow == indexPath {
            tableView.deselectRow(at: indexPath, animated: false)
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
            return nil
        }
        return indexPath
    }
}
