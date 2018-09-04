//
//  ProjectMainViewController.swift
//  Hopeathon
//
//  Created by omrobbie on 04/09/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

import UIKit

class ProjectMainViewController: UIViewController {

    @IBOutlet weak var cvProjectDetail: UIView!
    @IBOutlet weak var cvPointMain: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func segmentedProjectChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 1:
            self.view.bringSubview(toFront: cvPointMain)
            
        default:
            self.view.bringSubview(toFront: cvProjectDetail)
        }
    }
}
