//
//  Buttons.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/24/25.
//

import SwiftUI

struct Buttons: View {
    @State var title: String = "Hello"
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            
            //first way
            Button("Press me") {
                self.title = "Pressed"
            }
            
            //second way
            Button(action: {
                self.title = "Pressed from second way"
            }, label: {
                Text("Presse me too")
            })
            .accentColor(.red)
            
            Button(action: {
                self.title = "clicked"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width:100)
                    .shadow(color: .black, radius: 5, x:0.0, y:2.5)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.system(size: 50))
                            .scaledToFit()
                            .foregroundStyle(Color.red)
                    )
            })
            
            Button(action: {
                self.title = "Capsule"
            }, label: {
                Text("Finish".uppercased())
                    .accentColor(.gray)
                    .padding()
                    .padding(.horizontal)
                    .cornerRadius(10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 3)
                    )
                
            })
            
        }
    }
}

#Preview {
    Buttons()
}
