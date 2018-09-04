//
//  ProjectDetailViewController.swift
//  Hopeathon
//
//  Created by omrobbie on 04/09/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

import UIKit

class ProjectDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let rightBarButton = UIBarButtonItem(title: "Save", style: UIBarButtonItemStyle.plain, target: self, action: #selector(save(_:)))
        self.navigationItem.rightBarButtonItem = rightBarButton
    }
    
    @objc func save(_ sender:UIBarButtonItem!) {
        showDialog(title: "Save New Project")
    }
}
