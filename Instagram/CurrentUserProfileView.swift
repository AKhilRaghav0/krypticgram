import SwiftUI

struct CurrentUserProfileView: View {
    let user: User
    
    var posts: [Post] {
        return Post.MOCK_POSTS.filter { $0.user?.username == user.username }
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 10) {
                    ProfileHeaderView(user: user)
                        .padding(.horizontal)
                    PostGridView(posts: posts)
                }
                .navigationTitle("Profile")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            // Add functionality here
                        }) {
                            Image(systemName: "line.3.horizontal")
                                .foregroundColor(Color.bg1)
                        }
                    }
                }
            }
        }
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView(user: User.MOCK_USERS[1])
    }
}
