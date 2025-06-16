//
//  StoryView.swift
//  InstagramUI
//
//  Created by Harsh Makwana on 6/14/25.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 10) {
                
                    ForEach(0...9, id: \.self) {
                        circle in
                        VStack{
                            Circle()
                                .overlay(Circle().stroke(LinearGradient(gradient: Gradient(colors: [.pink, .yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 3))
                                .overlay(content: {
                                    Image("story-\(circle)")
                                        .resizable()
                                        .scaledToFill()
                                        .foregroundStyle(.red)
                                        .clipShape(.circle)
                                        .padding(5)
                                    
                                    
                                })
                                .frame(width: 85, height: 85)
                            
                            Text("Name")
                                .font(.callout)
                                .foregroundStyle(.white)
                        }
                    }
                    
                }
            .padding(.top, 5)
            .padding(.horizontal)
            .padding(.bottom, -3)
        }
//        .frame(height: 120)
//        .padding(.top, 5)
        Spacer()
       
    }
}

#Preview {
    StoryView()
}
