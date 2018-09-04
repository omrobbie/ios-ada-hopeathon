//
//  ProjectViewController.swift
//  Hopeathon
//
//  Created by omrobbie on 04/09/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

import UIKit
import JJFloatingActionButton

class ProjectViewController: UIViewController {
    
    let actionButton = JJFloatingActionButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        actionButton.buttonColor = #colorLiteral(red: 0.1490196078, green: 0.6, blue: 0.9843137255, alpha: 1)
        
        actionButton.addItem(title: "Add") { item in
            self.performSegue(withIdentifier: "toNewProject", sender: self)
        }
        
        actionButton.display(inViewController: self)
    }

    @IBAction func btnDetailProjectClicked(_ sender: Any) {
        performSegue(withIdentifier: "toDetailProject", sender: sender)
    }
}
