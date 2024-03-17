//
//  Post.swift
//  Instagram
//
//  Created by akhil on 15/03/24.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerID: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timeStamp: Date
    var user: User?
}


extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString, ownerID: NSUUID().uuidString, caption: "First Post", likes: 23, imageUrl: "halo-1", timeStamp: Date(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerID: NSUUID().uuidString, caption: "Mine first Post too", likes: 232, imageUrl: "halo-2", timeStamp: Date(), user: User.MOCK_USERS[1]),
        .init(id: NSUUID().uuidString, ownerID: NSUUID().uuidString, caption: "Kya be Captions", likes: 423, imageUrl: "halo-3", timeStamp: Date(), user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString, ownerID: NSUUID().uuidString, caption: "Test_Post 1 ", likes: 889, imageUrl: "halo-4", timeStamp: Date(), user: User.MOCK_USERS[3])
    
    ]
}
