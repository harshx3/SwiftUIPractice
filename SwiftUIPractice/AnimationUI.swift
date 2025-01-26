//
//  AnimationUI.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/25/25.
//

import SwiftUI

struct AnimationUI: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack {
            Button("Button") {
//                withAnimation(.easeIn) {
//                    isAnimated.toggle()
//                }
                //animation with delay
//                withAnimation(Animation
//                    .easeInOut
////                    .delay(0.5)
////                    .repeatCount(5, autoreverses: true)
////                    .repeatForever(autoreverses: true)
//                              //we can directly assing .animation to perticular item to not confilict the animation with other as well like below this  rect
//               { )
                
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 30 : 10)
                .fill(isAnimated ? Color.red : Color.blue)
                .frame(width: isAnimated ? 100: 300, height:isAnimated ? 100: 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(x: isAnimated ? -100 : 0, y: isAnimated ? -300 : 0)
                .animation(Animation
                    .default
                    .repeatCount(3,autoreverses: true))
        //animation curve change velocity  through out the animation and the duration is the how we want to overall time to manage start to finish
            Spacer()
        }
            
    }


#Preview {
    AnimationUI()
}
