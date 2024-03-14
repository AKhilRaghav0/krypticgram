//
//  LoginView.swift
//  Instagram
//
//  Created by akhil on 14/03/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        NavigationStack {
            VStack {
                //Logo
                Image("instagram")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 100)
                
                // TextFields
                
                VStack {
                    TextField("Enter your Username", text: $email)
                        .autocapitalization(.none)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    SecureField("Password", text: $password)
                        .autocapitalization(.none)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    
                }
                Button(action: {
                    print("Show Forgot pass")
                }, label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                    
                })
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                Button(action: {
                    print("Login")
                }, label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                        
//                        .padding(.top)
//                        .padding(.trailing, 28)
                    
                })
                .padding(.vertical)
//                .buttonStyle(.borderedProminent)
//                .buttonBorderShape(.roundedRectangle)
                
                HStack {
                    RoundedRectangle(cornerRadius: 1)
                        .frame(maxWidth: .infinity)
                        .frame(height: 0.4)
                        .foregroundStyle(Color.gray)
//                        .foregroundStyle(Color(.systemGray6))
                        .padding(.horizontal)
                    Text("OR")
                        .font(.system(size: 16, weight: .semibold, design: .rounded))
                        .foregroundStyle(Color.gray)
                    RoundedRectangle(cornerRadius: 1)
                        .frame(maxWidth: .infinity)
                        .frame(height: 0.4)
                        .foregroundStyle(Color.gray)
                        
                        .padding(.horizontal)
                    
                    
                }
                .padding(.vertical)
                
                Button(action: {
                    print("Don't have an account?")
                }) {
                    HStack {
                        Text("Don't have an account?")
                            .font(.footnote)
                        Text("Sign Up")
                            .font(.footnote)
                            .fontWeight(.semibold)
//                            .background(Color(.systemBlue))
//                            .bold()
//                            .padding(.top)
                    }
                    .padding(.trailing, 28)
                }

               
            }
        }
    }
}

#Preview {
    LoginView()
}
