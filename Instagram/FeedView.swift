//
//  FeedView.swift
//  Instagram
//
//  Created by Akhil on 10/03/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack  {
            ScrollView {
//                StoryView(post: Post.MOCK_POSTS[1])
                LazyVStack(spacing: 32) {
                    ForEach(Post.MOCK_POSTS){ post in
                        FeedCell(post: post)
                    }
                    
                    
                }
                .padding(.top, 8)
            }
            .navigationTitle("Feeds")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    //                    Image("instagram")
                    //                        .renderingMode(.template)
                    //                        .resizable()
                    Text("Krypticgram")
                        .font(.custom("VT323", size: 22))
                        .frame(width: 100, height: 82)
                    
                    
                    
                    
                }
                ToolbarItem(placement: .topBarTrailing) {
                    
                    NavigationLink(destination: uploadPostView()) {
                            Image(systemName: "plus.app")
                                .imageScale(.large)
                        }
                    
//                    Button {
//                        
//                    } label: {
//                        Image(systemName: "plus.app")
//                            .imageScale(.large)
//                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "paperplane")
                            .imageScale(.large)
                    }
                    
                }
                
                
                
                
            }
        }
    }
}

#Preview {
    FeedView()
}
