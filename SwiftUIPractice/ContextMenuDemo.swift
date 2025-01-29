//
//  ContextMenuDemo.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/28/25.
//

import SwiftUI

struct ContextMenuDemo: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            Image(systemName: "house.fill")
                .font(.largeTitle)
            Text("Sweet Home")
                .font(.title)
                .fontWeight(.semibold)
            Text("Home for everyone")
                .font(.title2)
        }
        .foregroundStyle(.white)
        .padding(20)
        .background(.purple)
        .cornerRadius(30)
        .contextMenu(
            menuItems: {
                Text("a")
                Text("b")
                //we can have buttons iamge and anything and add logic accordingly
            }
        )
    }
}

#Preview {
    ContextMenuDemo()
}
