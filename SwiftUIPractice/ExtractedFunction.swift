//
//  ExtractedFunction.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/24/25.
//

import SwiftUI

struct ExtractedFunction: View {
    @State var backgroundColor: Color = .blue
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            //we can extract the content as well so we can write clean readable code
            contentLayer
            
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button(action: {
                //instead of here we can define function outside as well
                //                    backgroundColor = .red?
                buttonClicked()
            }) {
                Text("Change Color")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
        }
    }
    
        func buttonClicked() {
            backgroundColor = .red
    }
}

#Preview {
    ExtractedFunction()
}
