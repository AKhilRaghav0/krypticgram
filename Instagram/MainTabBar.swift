//
//  MainTabBar.swift
//  Instagram
//
//  Created by Akhil on 10/03/24.
//

import SwiftUI

struct MainTabBar: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            uploadPostView()
                .tabItem {
                    Image(systemName: "video.and.waveform")
                }
            
            Text("Tinder Swap Section")
                .tabItem {
                    Image(systemName: "flame")
                }
            
            CurrentUserProfileView(user: User.MOCK_USERS[1])
                .tabItem {
                   Image(systemName: "person")
                        
                        .clipShape(Circle())
                }
        }
        .accentColor(Color.bg1)
    }
}

#Preview {
    MainTabBar()
}


//MARK: Check after completion
//
//struct CustomTabItem: View {
//    var imageName: String
//    
//    var body: some View {
//        Image(imageName)
//            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .frame(width: 1, height: 1) // Adjust as needed
//    }
//}
