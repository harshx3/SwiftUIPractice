//
//  HeaderView.swift
//  InstagramUI
//
//  Created by Harsh Makwana on 6/13/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        
        HStack {
            Image("Instagram_Logo")
                .foregroundStyle(.white)
                .fontDesign(.monospaced)
                .fontWeight(.semibold)
            Spacer()
            HStack(spacing: 15) {
//                Image(systemName: "plus.app")
                Image(systemName: "heart")
                Image(systemName: "paperplane")
            }
            .foregroundStyle(.white)
        }
        .font(.title)
//        .padding(.top)
        .padding(.horizontal, 20)
        Spacer()
        
    }
}

#Preview {
    HeaderView()
}
