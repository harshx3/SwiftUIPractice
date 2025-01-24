//
//  Padding.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/24/25.
//

import SwiftUI

struct Padding: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //adding frame gives you space but its not dynamic compare to padding
//            .background(Color.red)
        //by default padding is 10
//            .padding()
        //same as this
//            .padding(.all, 10)
        //we can stack padding using one more time
        //so 10 for all and extra 10 for leading
//            .padding(.leading, 10)
//            .background(Color.blue)
        
        VStack(alignment:.leading) {
            Text("Hello App")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 10)
                .fontDesign(.monospaced)
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the test to the leading edge.")
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color:Color.black.opacity(0.4),
                radius:10,
                x:0.0, y:1.4)
        .padding(.horizontal, 10)
        
    }
}

#Preview {
    Padding()
}
