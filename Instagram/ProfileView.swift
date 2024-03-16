//
//  ProfileView.swift
//  Instagram
//
//  Created by Akhil on 10/03/24.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    var body: some View {
        //        NavigationStack {
        ScrollView {
            VStack(spacing: 10) {
                //HEader
                HStack {
                    
                    ZStack {
                        Circle()
                            .stroke(
                                AngularGradient(gradient: Gradient(colors: [Color.red, Color.yellow, Color.purple, Color.pink]), center: .center),
                                lineWidth: 3 // Adjust line width as needed
                            )
                            .frame(width: 90, height: 90)
                        Image(user.profileImageURL ?? "")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                    }
                    
                    Spacer()
                    
                    HStack(spacing: 8) {
                        UserStatView(value: 89, title: "posts")
                        UserStatView(value: 765, title: "followers")
                        UserStatView(value: 472, title: "following")
                        
                    }
                    
                    Spacer()
                    
                    //Profile and Profile Data
                    
                }
                .padding(.horizontal)
                //                .padding(.bottom, 4)
                VStack (alignment: .leading, spacing: 4){
                    //USerName & Bio
                    HStack {
                        if let fullname = user.fullname {
                            Text("\(user.username)")
                                .font(.footnote)
                                .fontWeight(.semibold)
                        }
                        
                        Image(systemName: "checkmark.seal.fill")
                            .renderingMode(.template)
                            .foregroundColor(.blue)
                    }
                    
                    
                    
                    if let bio = user.bio {
                        Text(bio)
                            .font(.footnote)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                // ActionButton
                Button(action: {
                    
                }, label: {
                    Text("Edit Button")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 32)
                        .foregroundColor(Color.bg1)
                        .overlay (
                            RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 1)
                        )
                    
                })
                
                Divider()
                
            }
            
            
            //Post Grid View
            
            LazyVGrid(columns: gridItems, spacing: 1) {
                ForEach(0 ... 15, id: \.self) { index in
                    Image("posts")
                        .resizable()
                        .scaledToFill()
                }
            }
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}
//}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
