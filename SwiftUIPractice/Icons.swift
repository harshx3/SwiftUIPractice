//
//  Icons.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/23/25.
//

import SwiftUI

struct Icons: View {
    var body: some View {
        Image(systemName: "heart.fill")
//            .font(.system(size: 200))
            .resizable()
            .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .foregroundStyle(Color.red)
            .frame(width:200, height:200)
            .clipped()
        //you can find all the icons in SF symbols app or you can search for same on web
        Image(systemName: "xmark")
            .font(.title)
        Image(systemName: "trash.slash.square")
            .renderingMode(.original)
            .resizable()
            .font(.largeTitle)
            .frame(width:50, height: 50)
            
        
        
    }
}

#Preview {
    Icons()
}
