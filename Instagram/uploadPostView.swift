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
    @Binding var tabIndex: Int
    @StateObject var viewModel = UploadPostViewModel()
    var body: some View {
        VStack {
            
            //Action Bar
            
            HStack {
                Button(action: {
                    caption = ""
                    viewModel.postImage = nil
                    viewModel.selectedImage = nil
                    tabIndex = 0
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
                if let image = viewModel.postImage {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipped()
                        .cornerRadius(10)
                        .padding()
                }
               
                
                TextField("Enter your Captions", text: $caption, axis: .vertical)
            }
            
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
        .onAppear{
            imagePickerPresented.toggle()
        }
        .photosPicker(isPresented: $imagePickerPresented, selection: $viewModel.selectedImage)
    }
}

#Preview {
    uploadPostView(tabIndex: .constant(0))
}
