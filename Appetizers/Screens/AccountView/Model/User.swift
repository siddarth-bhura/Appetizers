//
//  User.swift
//  Appetizers
//
//  Created by Siddarth Bhura on 16/03/25.
//

import Foundation


// User -> Data -> UserDefaults

struct User: Codable {
    
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequentRefills = false
    
}
