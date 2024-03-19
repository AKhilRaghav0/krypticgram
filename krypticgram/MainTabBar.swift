//
//  MainTabBar.swift
//  Instagram
//
//  Created by Akhil on 10/03/24.
//

import SwiftUI

struct MainTabBar: View {
    @State private var selectedIndex = 0
    var body: some View {
        TabView (selection: $selectedIndex){
            FeedView()
                .onAppear{
                    selectedIndex = 0
                }
                .tabItem {
                    Text("Home")
                    Image(systemName: "house")
                }.tag(0)
            
            SearchView()
                .onAppear{
                    selectedIndex = 1
                }
                .tabItem {
                    Text("Look Up")
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            
            uploadPostView(tabIndex: $selectedIndex)
                .onAppear{
                    selectedIndex = 2
                }
                .tabItem {
                    Text("Post")
                    Image(systemName: "plus.app")
                }.tag(2)
            
            Text("Tinder Swap Section")
                .onAppear{
                    selectedIndex = 4
                }
                .tabItem {
                    Text("Bonefire")
                    Image(systemName: "flame")
                }.tag(3)
            
            CurrentUserProfileView(user: User.MOCK_USERS[1])
                .onAppear{
                    selectedIndex = 5
                }
                .tabItem {
                    Text("Profile")
                   Image(systemName: "person")
                        
                        .clipShape(Circle())
                }.tag(4)
           
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
