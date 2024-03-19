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
                    .frame(width: 280, height: 200)
                
                // TextFields
                
                VStack {
                    TextField("Enter your Username", text: $email)
                        .autocapitalization(.none)
                        .modifier(IGTextFieldModifier())
                       
                    SecureField("Password", text: $password)
                        .modifier(IGTextFieldModifier())
                    
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
                        .modifier(IGButtonModifier())
                        
//                        .padding(.top)
//                        .padding(.trailing, 28)
                    
                })
                .padding(.vertical)
//                .buttonStyle(.borderedProminent)
//                .buttonBorderShape(.roundedRectangle)
                
                HStack {
                    
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width / 2 - 40, height: 0.5)
                        
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width / 2 - 40, height: 0.5)
                        
                    
//                    RoundedRectangle(cornerRadius: 1)
//                        .frame(maxWidth: .infinity)
//                        .frame(height: 0.4)
//                        .foregroundStyle(Color.gray)
////                        .foregroundStyle(Color(.systemGray6))
//                        .padding(.horizontal)
//                    Text("OR")
//                        .font(.system(size: 16, weight: .semibold, design: .rounded))
//                        .foregroundStyle(Color.gray)
//                    RoundedRectangle(cornerRadius: 1)
//                        .frame(maxWidth: .infinity)
//                        .frame(height: 0.4)
//                        .foregroundStyle(Color.gray)
//                        
//                        .padding(.horizontal)
                    
                    
                }
                .foregroundColor(.gray)
                .padding(.vertical)
                
                
                
                NavigationLink{
                    addEmailView()
                        .navigationBarBackButtonHidden(true)
                } label:  {
                    HStack {
                        Text("Don't have an account ?")
                            .fontWeight(.semibold)
                        
                        Text("Sign Up")
                            .fontWeight(.bold)
                    }
                    .font(.footnote)
                    
                }
                .padding(.vertical, 16)
                
              
                
                
                

               
            }
        }
    }
}

#Preview {
    LoginView()
}
