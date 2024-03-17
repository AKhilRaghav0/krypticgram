//
//  ProfileView.swift
//  Instagram
//
//  Created by Akhil on 10/03/24.
//

import SwiftUI

struct ProfileView: View {
    let user: User
   
    
    var posts: [Post]  {
        return Post.MOCK_POSTS.filter({ $0.user?.username == user.username})
    }
   
    var body: some View {
        //        NavigationStack {
        ScrollView {

            ProfileHeaderView(user: user)
            
            //Post Grid View
            
            PostGridView(posts: posts)
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}
//}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
