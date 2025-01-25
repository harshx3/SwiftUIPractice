//
//  SafeAreaDemo.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/24/25.
//

import SwiftUI

struct SafeAreaDemo: View {
    var body: some View {
        //different size of ios devices have different safe area
//        ZStack {
//            //background
//            Color.blue
//            //to ignore safe area and take full screen
//                .edgesIgnoringSafeArea(.all)
//            VStack {
//                Text("Hello")
//                Spacer()
//            }
//        }
        //anoter way of ingnoring safe area
        ScrollView {
            VStack {
                Text("Photos")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading,20)
                    ForEach(0..<10) {index in
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width:400, height:150)
                            .cornerRadius(20)
                    }
                }
            .background(Color.secondary)
        }
        .background(
            Color.red
                .edgesIgnoringSafeArea(.all)
        )
    }
}

#Preview {
    SafeAreaDemo()
}
