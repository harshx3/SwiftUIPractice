//
//  Images.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/23/25.
//

import SwiftUI

struct Images: View {
    var body: some View {
        Image("drag")
            .resizable()
//            .scaledToFill()
            .frame(width:300, height:200)
//            .clipped()
        //border radius
//            .cornerRadius(150)
        //clip the image to any shape
            .clipShape(Circle())
        
        Image("chart")
//            .renderingMode(.template)
            .resizable()
            .frame(width:100, height:100)
            .foregroundStyle(Color.red)
        
    }
}

#Preview {
    Images()
}
