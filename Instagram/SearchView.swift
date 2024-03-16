//
//  SearchView.swift
//  Instagram
//
//  Created by akhil on 13/03/24.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    var body: some View {
        NavigationStack {
            
            
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(User.MOCK_USERS) { user in
                        NavigationLink(value: user) {
                            HStack {
                                Image(user.profileImageURL ?? "yes")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                                
                                VStack(alignment: .leading) {
                                    Text("\(user.username)")
                                        .fontWeight(.semibold)
                                    
                                    if let fullname = user.fullname {
                                        Text(fullname)
                                    }
                                    
                                    
                                }
                                .font(.footnote)
                                
                                
                                Spacer()
                            }
                            .foregroundColor(Color.bg1)
                            .padding(.horizontal)

                        }
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search...")
            }
            
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
            })
            
            .navigationTitle("Explore").font(.custom("VT323", size: 20))
            
            .navigationBarTitleDisplayMode(.inline)
        }
        .accentColor(Color.bg1)
    }
}

#Preview {
    SearchView()
}
