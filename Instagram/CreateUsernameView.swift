//
//  CreateUsernameView.swift
//  Instagram
//
//  Created by akhil on 15/03/24.
//

import SwiftUI

struct CreateUsernameView: View {
    @State private var username: String = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            Text("Create Username")
                .font(.custom("VT323", size: 37))
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Pick a username for your new account. You can always change it later.")
                .font(.headline)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            
            TextField("Username", text: $username)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
                .padding(.top)
            
            NavigationLink{
                CreatePasswordView()
                    .navigationBarBackButtonHidden(true)
            } label : {
                Text("Next")
                    .modifier(IGButtonModifier())
            }
            .padding(.vertical)
            .padding(.vertical)
          Spacer()
            
        }
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
                
            }
        })
    }
}

#Preview {
    CreateUsernameView()
}
