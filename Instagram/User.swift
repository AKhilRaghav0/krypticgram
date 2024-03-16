//
//  User.swift
//  Instagram
//
//  Created by akhil on 15/03/24.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    var username: String
    var profileImageURL : String?
    var fullname: String?
    var bio: String?
    let email: String 
    
}
