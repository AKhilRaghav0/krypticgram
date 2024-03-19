//
//  User.swift
//  Instagram
//
//  Created by akhil on 15/03/24.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageURL : String?
    var fullname: String?
    var bio: String?
    let email: String 
    
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "KrypticBit", profileImageURL: "halo-1", fullname: "Akhil Raghav", bio: "cat distribution system", email: "work@akhilraghav.cloud"),
        .init(id: NSUUID().uuidString, username: "hackerboi_virus", profileImageURL: "halo-2", fullname: "Vaibhav", bio: "cat distribution system", email: "work@hackerboi_virus.cloud"),
        .init(id: NSUUID().uuidString, username: "Saad Salim", profileImageURL: "halo-3", fullname: "Saad Salim", bio: "cat distribution system", email: "work@saadsalim.cloud"),
        .init(id: NSUUID().uuidString, username: "Sushank", profileImageURL: "halo-4", fullname: "Sushank", bio: "cat distribution system", email: "work@sushank.cloud")
        
    
    ]
}
