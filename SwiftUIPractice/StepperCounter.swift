//
//  StepperCounter.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/30/25.
//

import SwiftUI

struct StepperCounter: View {
    @State var count = 0
    @State var widthIncrement: CGFloat = 0
    var body: some View {
        VStack {
            
            Stepper("Stepper : \(count)", value: $count)
                .padding()
                .background(.blue)
                .cornerRadius(20)
                .padding(.horizontal, 30)
               
               //stepper with custom steps
            
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 100 + widthIncrement, height: 100)
              
            Stepper("Custom Stepper") {
                incrementWidth(amount: 10)
            } onDecrement: {
                incrementWidth(amount: -10)
            }
        }
    }
    func incrementWidth(amount: CGFloat) {
       
            withAnimation(.easeInOut) {
                widthIncrement += amount
            }
    }
}

#Preview {
    StepperCounter()
}
