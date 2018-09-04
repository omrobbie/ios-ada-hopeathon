//
//  ProjectViewController.swift
//  Hopeathon
//
//  Created by omrobbie on 04/09/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

import UIKit
import JJFloatingActionButton

class ProjectViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tblviewProjects: UITableView!
    
    let actionButton = JJFloatingActionButton()
    
    var arrProjects = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        tblviewProjects.delegate = self
        tblviewProjects.dataSource = self
        
        arrProjects.append("Gempa Lombok")
        arrProjects.append("Banjir Bali")
        arrProjects.append("Tsunami Aceh")
        
        
        
        actionButton.buttonColor = #colorLiteral(red: 0.1490196078, green: 0.6, blue: 0.9843137255, alpha: 1)
        
        actionButton.addItem(title: "Add") { item in
            self.performSegue(withIdentifier: "toNewProject", sender: self)
        }
        
        actionButton.display(inViewController: self)
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrProjects.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellProjects", for: indexPath) as! ProjectsTableViewCell
        
        let pName = arrProjects[indexPath.row]
        print(pName)
        //cell.cellProtocol = self
        
        cell.lblProjectName.text = pName
        
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toDetailProject", sender: indexPath)
    }
    
    
}
