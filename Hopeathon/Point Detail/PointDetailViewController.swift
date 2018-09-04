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
    var pointData : Point!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(pointData)
        
        pointName.text = pointData.name
        pointLeader.text = pointData.leader
        pointPhone.text = pointData.phone
        pointLoc.text = pointData.location
        pointType.text = pointData.type
        
        
    }
}
