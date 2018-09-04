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
    //var idSelected = Int()
    var pointData : Point!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func segmentedChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 1:
            self.view.bringSubview(toFront: cvLogistic)
        default:
            let vc = PointDetailViewController()
//            vc.pointName.text = pointData["pointName"]
//            vc.pointLoc.text = pointData["pointLoc"]
            vc.pointData = pointData
            self.view.bringSubview(toFront: cvPointDetail)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "containDetail" {
            let destination = segue.destination as! PointDetailViewController
            destination.pointData = pointData
        }
    }
}
