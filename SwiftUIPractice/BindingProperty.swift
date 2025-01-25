//
//  BindingProperty.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/25/25.
//

import SwiftUI

struct BindingProperty: View {
    @State var backgroundColor: Color = Color.green
    var body: some View {
            /*
             Binding basically help us to change the state var updation in way that if we have variable in out parent view and want to update that variable from child subView button than this binding will help to do that
             */
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
          //so here as we declared binding in subView so when we put subview here we have pass the variabel to that view using $ sign
            ButtonView(backgroundColor: $backgroundColor)
        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    
    var body: some View {
        
        Button(action: {
            backgroundColor = Color.orange
        }, label: {
            Text("Button")
                .foregroundStyle(.white)
                .font(.title)
                .padding()
                .padding(.horizontal)
                .background(.blue)
                .cornerRadius(10)
                
        })
        
    }
}

#Preview {
    BindingProperty()
}
