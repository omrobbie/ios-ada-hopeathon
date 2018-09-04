//
//  PointDetailViewController.swift
//  Hopeathon
//
//  Created by omrobbie on 04/09/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

import UIKit

class PointDetailViewController: UIViewController {

    @IBOutlet weak var projectName: UILabel!
    @IBOutlet weak var pointName: UILabel!
    @IBOutlet weak var pointLeader: UILabel!
    @IBOutlet weak var pointPhone: UILabel!
    @IBOutlet weak var pointLoc: UILabel!
    @IBOutlet weak var pointType: UILabel!
    var pointData = [String:String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(pointData)
        //projectName.text = pointData["projectName"]
        pointName.text = pointData["pointName"]
        //pointLeader.text = pointData["pointLeader"]
        //pointPhone.text = pointData["pointPhone"]
        pointLoc.text = pointData["pointLoc"]
        //pointType.text = pointData["pointType"]
        
    }
}
