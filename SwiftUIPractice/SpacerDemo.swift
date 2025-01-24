//
//  SpacerDemo.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/24/25.
//

import SwiftUI

struct SpacerDemo: View {
    var body: some View {
        /*
         Spacer is a flexible layout element used to create space b/w views. it expands to fill available space within a parent container.
         */
//        HStack(spacing: 0) {
            //minimum length 0 so if there is no space or in any situation there is more padding or space then space will not take space at minLength:0
//            Spacer(minLength: 0)
//                .frame(height:10)
//                .background(Color.gray)
//            Rectangle()
//                .fill(Color.red)
//                .frame(width:50, height:50)
//            
//            Spacer()
//                .frame(height:10)
//                .background(Color.gray)
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width:50, height: 50)
//            
//            Spacer()
//                .frame(height:10)
//                .background(Color.gray)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width:50, height:50)
//            
//            Spacer()
//                .frame(height:10)
//                .background(Color.gray)
//        }
//        .background(Color.blue)
        
        VStack {
            HStack {
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
        Spacer()
        
        
    }
}

#Preview {
    SpacerDemo()
}
