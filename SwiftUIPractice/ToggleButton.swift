//
//  ToggleButton.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/28/25.
//

import SwiftUI

struct ToggleButton: View {
    @State var isOn = false
    var body: some View {
        
        ZStack {
            
            Toggle(isOn: $isOn,
                   label: {
                Text("Background")
            })
            .padding()
            .background(Color.red)
            .toggleStyle(SwitchToggleStyle(tint: Color.green.opacity(0.1)))
        
        }
        .padding()
        .background(Color.black)
      
    }
}

#Preview {
    ToggleButton()
}
