//
//  uploadPostView.swift
//  Instagram
//
//  Created by akhil on 17/03/24.
//

import SwiftUI
import PhotosUI

struct uploadPostView: View {
    @State private var caption: String = ""
    @State private var imagePickerPresented: Bool = false
    @State private var photoItem: PhotosPickerItem?
    var body: some View {
        VStack {
            
            //Action Bar
            
            HStack {
                Button(action: {
                    
                }, label: {
                    Text("Cancel")
                })
                Spacer()
                Text("New Post")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                })
//                Spacer()
            }
            .padding(.horizontal)
            
            //Post Image and Caption
            
            HStack {
                Image("halo-2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipped()
                
                TextField("Enter your Captions", text: $caption, axis: .vertical)
            }
            
            Spacer()
        }
        .onAppear{
            imagePickerPresented.toggle()
        }
        .photosPicker(isPresented: $imagePickerPresented, selection: $photoItem)
    }
}

#Preview {
    uploadPostView()
}
