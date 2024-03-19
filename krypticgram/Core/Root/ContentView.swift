//
//  ContentView.swift
//  Instagram
//
//  Created by Akhil on 10/03/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    var body: some View {
        Group {
            if viewModel.userSession == nil {
                LoginView()
            } else {
                MainTabBar()
            }
        }
       
        
        
    }
}

#Preview {
    ContentView()
}
