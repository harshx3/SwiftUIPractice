//
//  DarkMode.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 2/10/25.
//

import SwiftUI

struct DarkMode: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {

        NavigationView {
            ScrollView {
                VStack {
                    Text("This color is PRIMAY")
                        .foregroundStyle(.primary)
                    Text("This color is SECOCDARY")
                        .foregroundStyle(.secondary)
                    Text("This color is BLACK")
                        .foregroundStyle(.black)
                    Text("This color is WHITE")
                        .foregroundStyle(.white)
                    Text("This color is RED")
                        .foregroundStyle(.red)
                    Text("This is globally adaptive color")
                        .foregroundStyle(Color("CustomColor"))
                    Text("This is locally adaptive color")
                        .foregroundStyle(colorScheme == .light ? .green : .yellow)
                    
                }
            }
            .navigationTitle(Text("Mode Color"))
        }
    }
}

#Preview {
    DarkMode()
}
