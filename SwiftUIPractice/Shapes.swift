//
//  Shapes.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/23/25.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
//        Circle()
        //both fill and foregroundColor for color
//            .fill(Color.blue)
//            .foregroundColor(.red)
        //stroke - just get the border remove the color
//            .stroke(Color.blue, lineWidth: 1.5)
//
        //to show circle half full quater
//            .trim(from:0.5, to:1.0)
//            .stroke(Color.blue, style: StrokeStyle(
//                           lineWidth: 20, lineCap: .butt, dash: [10]
//                       ))
        
//        Ellipse()
//            .frame(width: 200, height: 100)
        
//        Capsule(style: .continuous)
        //orders matter here
//            .stroke(Color.red, lineWidth:20)
//            .frame(width: 200, height: 100)
           
        RoundedRectangle(cornerRadius: 10)
            .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round))
            .trim(from: 0.3, to: 0.9)
            .frame(width: 200, height: 100)
        
        
    }
}

#Preview {
    Shapes()
}
