//
//  PointMainViewController.swift
//  Hopeathon
//
//  Created by omrobbie on 04/09/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

import UIKit

class PointMainViewController: UIViewController {

    @IBOutlet weak var cvPointDetail: UIView!
    @IBOutlet weak var cvLogistic: UIView!
    var idSelected = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func segmentedChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 1:
            self.view.bringSubview(toFront: cvLogistic)
        default:
            self.view.bringSubview(toFront: cvPointDetail)
        }
    }
}
