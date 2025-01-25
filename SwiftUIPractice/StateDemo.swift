//
//  StateDemo.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/24/25.
//

import SwiftUI

struct StateDemo: View {
    //@state is telling the view to watch the state of this variable coz it might change
    @State var backgroundColor: Color = Color.green
    
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing:20) {
                Text("Background Changer")
                    .font(.largeTitle)
                
                HStack(spacing:20) {
                    Button("Red BG") {
                        backgroundColor = .red
                    }
                    .foregroundStyle(.black)
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    
                    Button("Blue BG") {
                        backgroundColor = .blue
                    }
                    .foregroundStyle(.black)
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                }
                .font(.title)
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    StateDemo()
}
