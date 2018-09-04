//
//  User.swift
//  Hopeathon
//
//  Created by omrobbie on 04/09/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

class User {
    var username: String = ""
    var password: String = ""
    var role: Int = 0
    
    init(username: String, password: String, role:Int) {
        self.username = username
        self.password = password
        self.role = role
    }
}
