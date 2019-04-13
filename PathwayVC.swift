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
    
    var pathways = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        pathwayTableView.delegate = self
        pathwayTableView.dataSource = self
    }
    

}

extension PathwayVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PathwayCell") as? PathwayCell else {return UITableViewCell()}
        let pathType = "Default Type"
    
        cell.ConfigureCell(pathway: pathType)
        
        if (!cell.checkSelected())
        {
            print("Test passed")
        }
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
