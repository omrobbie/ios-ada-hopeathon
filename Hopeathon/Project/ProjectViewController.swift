//
//  ProjectViewController.swift
//  Hopeathon
//
//  Created by omrobbie on 04/09/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

import UIKit

class ProjectViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnDetailProjectClicked(_ sender: Any) {
        performSegue(withIdentifier: "toDetailProject", sender: sender)
    }
}
