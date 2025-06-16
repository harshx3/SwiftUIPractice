//
//  ContentView.swift
//  InstagramUI
//
//  Created by Harsh Makwana on 6/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack(alignment: .bottom) {
            BackgroundView()
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 0) {
                    HeaderView()
                    StoryView()
                    ForEach(posts) { post in
                        FeedView(post: post)
                    }
                        .padding(.top)
                    
                }
                
            }
    
            FooterView()
            
        }
    }
}

#Preview {
    ContentView()
}
