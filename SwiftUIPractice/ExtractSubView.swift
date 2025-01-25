//
//  ExtractSubView.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/24/25.
//

import SwiftUI

struct ExtractSubView: View {
    var body: some View {
        
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
            
            contentLayer
        }
    }
    
    
    var contentLayer: some View {
        HStack {
            ExtractedView(title: "Apple", count: 5, color: .red)
            ExtractedView(title: "Banana", count: 12, color: .yellow)
            ExtractedView(title: "Grapes", count: 50, color: .black)
        }
    }
}


#Preview {
    ExtractSubView()
}

struct ExtractedView: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
            
        }
        .fontWeight(.bold)
        .foregroundStyle(.white)
        .frame(width:100, height: 100)
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
