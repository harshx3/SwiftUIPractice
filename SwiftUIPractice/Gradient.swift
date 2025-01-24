//
//  Gradient.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/23/25.
//

import SwiftUI

struct Gradient: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
//            .fill(
//                LinearGradient(colors: [Color.red, Color.blue, ], startPoint: .topLeading, endPoint: .bottom)
//                )
//            .fill(
//                RadialGradient(colors: [Color.red, Color.blue], center: .topLeading, startRadius: 10, endRadius: 300)
//            )
        
            .fill(
                AngularGradient(colors: [Color.red, Color.blue], center: .topLeading, angle: .degrees(180))
                )
            .frame(width:300, height:200)
    }
}

#Preview {
    Gradient()
}
