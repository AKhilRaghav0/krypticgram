//
//  addEmailView.swift
//  Instagram
//
//  Created by akhil on 14/03/24.
//

import SwiftUI

struct addEmailView: View {
    @State private var email: String = ""
    var body: some View {
        VStack {
            Text("Add your Email")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("You will use this email to sign in to your account")
            
            TextField("Enter your Username", text: $email)
                .autocapitalization(.none)
                .font(.subheadline)
                .padding(12)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 24)
            
            Button(action: {
                print("Login")
            }, label: {
                Text("Login")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.bgI)
                    
                    .frame(width: 360, height: 44)
                    .background(Color.bg1)
                    .cornerRadius(8)
                    
//                        .padding(.top)
//                        .padding(.trailing, 28)
                
            })
            .padding(.vertical)
            
        }
    }
}

#Preview {
    addEmailView()
}
