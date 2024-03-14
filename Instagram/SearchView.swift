//
//  SearchView.swift
//  Instagram
//
//  Created by akhil on 13/03/24.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationStack {
            
            
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(0...12, id: \.self) { user in
                        HStack {
                            Image("halo-4")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text("Saad")
                                    .fontWeight(.semibold)
                                
                                Text("Saad Salim")
                            }
                            .font(.footnote)
                            
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
