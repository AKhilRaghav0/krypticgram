//
//  FeedCell.swift
//  Instagram
//
//  Created by Akhil on 10/03/24.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack() {
            //Image + username
            HStack {
                Image("halo-4")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                VStack (alignment: .leading){
                    Text("Akhil Raghav")
                        .font(.footnote)
                        .font(.system(size: 17))
                    .fontWeight(.semibold)
                    
                    Text("@krypticBit")
                        .font(.system(size: 11))
//                        .font(.callout)
                        
                        .foregroundStyle(Color.gray)
                }
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "circle.grid.2x1")
                        .foregroundColor(Color.bg1)
                        .padding(.horizontal)
                })
          
            }
            .padding(.leading, 8)
            //Post Image
            Image("halo-1")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            //Action BUtton
            HStack (spacing: 16){
                Button(action: {
                    print("Liked")
                }, label: {
                    Image(systemName: "heart" )
                        .imageScale(.large)
                })
                
                Button(action: {
                    print("Comment Clicked")
                }, label: {
                    Image(systemName: "bubble.right" )
                        .imageScale(.large)
                })
                
                Button(action: {
                    print("Share Clicked")
                }, label: {
                    Image(systemName: "paperplane" )
                        .imageScale(.large)
                })
                
                Spacer()
                
                Button(action: {
                    print("Saved balls")
                }, label: {
                    Image(systemName: "bookmark" )
                        .imageScale(.large)
                })

                
            }
            .padding(.horizontal, 8)
            .padding(.top, 4)
            .accentColor(Color.bg1)
            
            //Likes label(
            Text("89 Likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            
            
            
            //Caption Label
            
            HStack {
                Text("Raghav ").fontWeight(.semibold)
                    +
                Text("Not really trying to write some Captions with mojis 🤨")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 0.5)
            
            
            //TimeStamp
            
            Text("89 Likes")
                .font(.footnote)
//                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundStyle(.gray)
            
        }
    }
}

#Preview {
    FeedCell()
}
