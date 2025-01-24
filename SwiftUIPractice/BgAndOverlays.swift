//
//  BgAndOverlays.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/23/25.
//

import SwiftUI

struct BgAndOverlays: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .frame(width:100, height: 100, alignment: .center)
//            .background(
//                Circle()
//                    .fill(Color.blue)
//            )
//            .frame(width:120, height: 120, alignment: .center)
//            .background(
//                Circle()
//                    .fill(Color.red))
        
        //overlays
//        Circle()
//            .fill(Color.pink)
//            .frame(width:100, height:100, alignment: .center)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundStyle(.white)
//            )
//            .background(
//                Circle()
//                    .fill(Color.purple)
//                    .frame(width:120, height:120))
        
        //overlay is top background is back
//        Rectangle()
//            .frame(width:100, height:100)
//            .overlay(
//                Rectangle()
//                .fill(Color.blue)
//                .frame(width:50, height:50),alignment: .topLeading
//            )
//            .background(
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width:150, height:150), alignment: .bottomTrailing
//            )
        Rectangle()
            .frame(width:200, height:200)
            .cornerRadius(15)
            .overlay(
                Rectangle()
                    .stroke(Color.red, lineWidth:10)
                    .frame(width:150, height:150)
                    .cornerRadius(10)
                    .overlay(
                        Circle()
                        .stroke(Color.red, lineWidth:20)
                        .frame(width:100, height:100)
                        .cornerRadius(50)
                    )
                    .overlay (
                        Rectangle()
                        .stroke(Color.red, lineWidth:10)
                        .frame(width:90, height:90)
                        
                    )
                    .background(
                        Circle()
                            .fill(Color.red)
                            .frame(width:40, height:40),alignment: .topTrailing                    )
                    )
        
            
        
    }
}

#Preview {
    BgAndOverlays()
}
