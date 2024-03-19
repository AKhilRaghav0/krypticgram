//
//  addEmailView.swift
//  Instagram
//
//  Created by akhil on 14/03/24.
//

import SwiftUI

struct addEmailView: View {
//    @State private var email: String = ""
    @EnvironmentObject var viewModel: RegistrationViewModel
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack (spacing: 12){
            Text("Add your Email")
                .font(.custom("VT323", size: 37))
                .fontWeight(.bold)
                .padding(.top)
            
            Text("You will use this email to sign in to your account")
                .font(.headline)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            
            TextField("Email", text: $viewModel.email)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
                .padding(.top)
            
            NavigationLink{
                CreateUsernameView()
                    .navigationBarBackButtonHidden(true)
            } label : {
                Text("Login")
                    .modifier(IGButtonModifier())
            }
            .padding(.vertical)
                        
           
          Spacer()
            
        }.toolbar(content: {
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
    addEmailView()
}
