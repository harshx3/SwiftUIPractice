//
//  TransitionDemo.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/25/25.
//

import SwiftUI

struct TransitionDemo: View {
    @State var popUp : Bool = false
    var body: some View {

        ZStack(alignment: .bottom) {
            
            VStack {
                Button("Press") {
                    popUp.toggle()
                }
                Spacer()
            }
            if popUp {
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(.move(edge: .bottom))
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom), removal: AnyTransition.opacity.animation(.easeInOut)))
                    .animation(.easeInOut)
            }
        }
        .edgesIgnoringSafeArea(.bottom)

    }
}

#Preview {
    TransitionDemo()
}
