//
//  CompleteSignUpView.swift
//  Instagram
//
//  Created by akhil on 15/03/24.
//

import SwiftUI

struct CompleteSignUpView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Spacer()
        VStack {
            VStack {
                Text("Welcome to Krypticgram")
                    
                    .font(.custom("VT323", size: 37))
                    .fontWeight(.bold)
                    .padding(.top)
                
                Text("Click below to Complete registration and start using Krypticgram")
                    .font(.headline)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                
                
               
                
                Button{
                    print("Complete Sign Up")
//                        .navigationBarBackButtonHidden(true)
                } label : {
                    Text("Complete Sign Up")
                        .modifier(IGButtonModifier())
                }
                .padding(.vertical)
                .padding(.vertical)
//              Spacer()
                
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
        Spacer()
    }
        
    
}

#Preview {
    CompleteSignUpView()
}
