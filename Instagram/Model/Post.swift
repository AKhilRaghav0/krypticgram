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



