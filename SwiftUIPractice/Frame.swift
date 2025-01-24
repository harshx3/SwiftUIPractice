//
//  Frame.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/23/25.
//

import SwiftUI

struct Frame: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            .frame(height:100, alignment: .top)
            .background(Color.orange)
            .frame(width:200)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.blue)
            .frame(height:400)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
    }
}

#Preview {
    Frame()
}
