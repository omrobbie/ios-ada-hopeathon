//
//  LoginViewController.swift
//  Hopeathon
//
//  Created by omrobbie on 03/09/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    var userRole = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnLoginClicked(_ sender: Any) {
        userRole = checkUserRole()
        
        if (userRole > 0) {
            performSegue(withIdentifier: "toProject", sender: sender)
        }
    }
    
    // User Role
    // 0 = Invalid
    // 1 = Admin
    // 2 = Super User
    // 3 = User
    func checkUserRole() -> Int {
        // load user data from firebase
        return 1
    }
}
