//
//  Point.swift
//  Hopeathon
//
//  Created by Afina R. Vinci on 04/09/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

import Foundation

class Point {
    var id: String = ""
    var name: String = ""
    var leader: String = ""
    var location: String = ""
    var type: String = ""
    var phone: String = ""
    
    init(id: String, name: String, leader: String, location: String, type: String, phone: String) {
        self.id = id
        self.name = name
        self.leader = leader
        self.location = location
        self.type = type
        self.phone = phone
    }

}
