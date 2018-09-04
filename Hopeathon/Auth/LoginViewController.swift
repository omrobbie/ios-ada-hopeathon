//
//  LoginViewController.swift
//  Hopeathon
//
//  Created by omrobbie on 03/09/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    var userData = Array<User>()
    var userRole = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUserData()
    }
    
    @IBAction func btnLoginClicked(_ sender: Any) {
        checkUserRole()
        
        if (userRole > 0) {
            performSegue(withIdentifier: "toProject", sender: sender)
        }
    }
    
    func setupUserData() {
        userData.append(User(username: "omrobbie", password: "1234", role: 1))
        userData.append(User(username: "novie", password: "1234", role: 2))
        userData.append(User(username: "afina", password: "1234", role: 3))
    }
    
    // User Role
    // 0 = Invalid
    // 1 = Admin
    // 2 = Super User
    // 3 = User
    func checkUserRole() {
        userRole = 0
        for user in userData {
            if user.username == txtUsername.text {
                if user.password == txtPassword.text {
                    userRole = user.role
                }
            }
        }
    }
}
