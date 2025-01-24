//
//  Stacks.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/24/25.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
       //Vstack - Vertical
        //HStack - Horizontal
        // ZStack - zIndex (back to front)
        VStack{
            Rectangle()
                .fill(Color.red)
                .frame(width:100, height:100)
            Rectangle()
                .fill(Color.yellow)
                .frame(width:100, height:100)
            Rectangle()
                .fill(Color.green)
                .frame(width:100, height:100)
            //all the stacks comes with spacing so to remove that we can use bracket and property like below
        }
        HStack(alignment: .center,spacing: 02, content: {
            Rectangle()
                .fill(Color.red)
                .frame(width:100, height:100)
                .cornerRadius(50)
            Rectangle()
                .fill(Color.yellow)
                .frame(width:100, height:100)
                .cornerRadius(50)
            Rectangle()
                .fill(Color.green)
                .frame(width:100, height:100)
                .cornerRadius(50)
        })
    }
}

#Preview {
    Stacks()
}
