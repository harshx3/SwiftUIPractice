//
//  FooterView.swift
//  InstagramUI
//
//  Created by Harsh Makwana on 6/15/25.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        Spacer()
        HStack(alignment: .center, spacing: 50) {
            Image(systemName: "house.circle")
            Image(systemName: "magnifyingglass")
            Image(systemName: "plus.app")
            Image("Reel")
                .resizable()
                .frame(width: 28, height: 28)
            Image(systemName: "person.circle")
            
        }
        .foregroundStyle(.white)
        .font(.title)
        .frame(maxWidth: .infinity, alignment: .bottom)
        .padding()
        .background(Color.black)
    }
}

#Preview {
    FooterView()
}
