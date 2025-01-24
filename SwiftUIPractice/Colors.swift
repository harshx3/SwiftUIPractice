//
//  Colors.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/23/25.
//

import SwiftUI

struct Colors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
        //primary color is used for dark and light to easily toggle colors
//            .fill(Color.primary)
        //to add the custom color we can use color literal
        //color picker - Color(#colorLiteral())
//            .fill(
//                Color(#colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1))
                //uicolor is from UIKit library
//                Color(UIColor.lightGray)
                //out custom color from asset
            .fill(Color("CustomColor"))
            .frame(width:300, height: 100)
//                    .shadow(radius: 60)
        //shadow with color
            .shadow(color: Color("CustomColor").opacity(0.5), radius: 10, x:10, y:5)
                        
        
    }
}

#Preview {
    Colors()
}
