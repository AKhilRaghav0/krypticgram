//
//  IGButtonModifier.swift
//  Instagram
//
//  Created by akhil on 15/03/24.
//

import SwiftUI

struct IGButtonModifier: ViewModifier{
    func body(content: Content) -> some View {
        content 
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(Color.bgI)
            
            .frame(width: 360, height: 44)
            .background(Color.bg1)
            .cornerRadius(8)
    }
}
