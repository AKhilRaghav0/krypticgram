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
                LazyVStack(spacing: 32) {
                    ForEach(0 ... 10, id: \.self){ post in
                        FeedCell()
                    }
                }
                .padding(.top, 8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image("instagram")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 100, height: 82)
                    
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
