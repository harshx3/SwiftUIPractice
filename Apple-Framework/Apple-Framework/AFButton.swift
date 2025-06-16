//
//  AFButton.swift
//  Apple-Framework
//
//  Created by Harsh Makwana on 5/30/25.
//

import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .frame(width: 280, height: 50)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .background(Color.red)
            .clipShape(.capsule)
    }
}

#Preview {
    AFButton(title: "Test Title")
}
