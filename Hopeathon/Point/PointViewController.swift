//
//  PointViewController.swift
//  Hopeathon
//
//  Created by omrobbie on 04/09/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

import UIKit

class PointViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnDetailPointClicked(_ sender: Any) {
        performSegue(withIdentifier: "toDetailPoint", sender: sender)
    }
}
