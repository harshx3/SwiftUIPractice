//
//  ScrollViewDemo.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/24/25.
//

import SwiftUI

struct ScrollViewDemo: View {
    let colors: [Color] = [.red, .blue, .purple, . cyan, .green, .yellow, .pink, .teal]
    var body: some View {
        ScrollView {
            VStack {
                ForEach(colors, id: \.self) {color in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack() {
                            ForEach(colors, id: \.self) {color in
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(color)
                                    .frame(width: 200, height: 200)
                                    .cornerRadius(10)

                            }
                        }
                    })
                   
                
                }
            }
        }
    }
}

#Preview {
    ScrollViewDemo()
}
