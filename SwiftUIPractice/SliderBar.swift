//
//  SliderBar.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 2/4/25.
//

import SwiftUI

struct SliderBar: View {
    
    @State var sliderValue: Double = 2
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating")
            //to change the decimal value to 2 digit
            Text(String(format: "%.2f", sliderValue))
                .foregroundStyle(color)
//            Slider(value: $sliderValue)
//                .accentColor(.primary)
//            Slider(value: $sliderValue, in: 1...10)
            //to jump the count in perticular sum like of 1 or 2 step: 1.0 increase the step by 1
//            Slider(value: $sliderValue, in: 0...5, step: 1.0)
            
            Slider(
                value: $sliderValue,
                   in: 1...5,
                   step: 1.0,
                   onEditingChanged: {
                (_) in color = .green
            },
                   minimumValueLabel: Text("1")
                    .font(.largeTitle),
                   maximumValueLabel: Text("5")
                    .font(.largeTitle),
                label: {
             Text("Title")}
            )
        }
    }
}

#Preview {
    SliderBar()
}
