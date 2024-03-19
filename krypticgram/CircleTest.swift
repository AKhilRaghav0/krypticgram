//
//  CircleTest.swift
//  Instagram
//
//  Created by Akhil on 10/03/24.
//

import SwiftUI

struct CircleTest: View {
    var body: some View {
        Circle()
                  .fill(
                    AngularGradient(gradient: Gradient(colors: [Color.red, Color.yellow, Color.purple, Color.pink]), center: .center)
                  )
        
    }
}

#Preview {
    CircleTest()
}
