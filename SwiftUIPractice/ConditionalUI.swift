//
//  ConditionalUI.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/25/25.
//

import SwiftUI

struct ConditionalUI: View {
    @State var showText: Bool = false
    @State var isLoading: Bool = false
    var body: some View {
        VStack(spacing:20) {
            if showText {
                Text("Clicked")
            }
            Button(action: {
                showText.toggle()
            }, label: {
                Text("Press")
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            })
            /*
             we can do && and || to take more condition
             */
            
            VStack {
                Button("Is Loading: \(isLoading.description)") {
                    isLoading.toggle()
                }
                
                if isLoading {
                    //progress view is  loading bar native to ios
                    ProgressView()
                }
                
                Button( "Color Change") {
                    isLoading.toggle()
                }
                RoundedRectangle(cornerRadius: 10)
                    .fill(isLoading ? Color.red : Color.blue)
                    .frame(width:200, height:200)
            }
            
        }
    }
}

#Preview {
    ConditionalUI()
}
