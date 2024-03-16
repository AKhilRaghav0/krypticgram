//
//  CreatePasswordView.swift
//  Instagram
//
//  Created by akhil on 15/03/24.
//

import SwiftUI

struct CreatePasswordView: View {
    @Environment(\.dismiss) var dismiss
    @State private var password: String = ""
    var body: some View {
        VStack {
            VStack {
                Text("Create Password")
                    .font(.custom("VT323", size: 37))
                    .fontWeight(.bold)
                    .padding(.top)
                
                Text("Pick a Password for your new account. You can always change it later.")
                    .font(.headline)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                
                
                SecureField("Password", text: $password)
                    .autocapitalization(.none)
                    .modifier(IGTextFieldModifier())
                    .padding(.top)
                
                NavigationLink{
                    CompleteSignUpView()
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
}

#Preview {
    CreatePasswordView()
}
