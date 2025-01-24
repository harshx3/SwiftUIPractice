//
//  ForEachLoop.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/24/25.
//

import SwiftUI

struct ForEachLoop: View {
    let imageData: [String] = ["xmark", "checkmark", "plus","minus","arrow.up.circle.fill","arrow.down.circle.fill"]
    var body: some View {
        HStack(spacing:4) {
            ForEach(imageData.indices) { index in
                Rectangle()
                    .fill(Color.red)
                    .frame(width:60, height:60)
                    .cornerRadius(10)
                    
                   
                    
                    .overlay(
                        VStack {
                            Image(systemName: imageData[index])
                            Text("\(index)")
                        }
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                    )
            }
        }
        .shadow(color:.gray, radius: 5, x:0.4, y:5.9)
        .padding(.horizontal, 10)
        Spacer()
        
    }
}

#Preview {
    ForEachLoop()
}
