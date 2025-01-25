//
//  LazyGrid.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/24/25.
//

import SwiftUI

struct LazyGrid: View {
    
    let columns: [GridItem] = [
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(100), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil)
        //here we have flexible as well like fixed
        //flexible will take space according to available width and if given
        //we have adaptive as well
        
        //insta story
        GridItem(.flexible(), spacing: 0, alignment: nil),
        GridItem(.flexible(), spacing: 0, alignment: nil),
        GridItem(.flexible(), spacing: 0, alignment: nil),
    ]
    
    var body: some View {
        
        ScrollView() {
            Rectangle()
                .fill(Color.white)
                .frame(height:300)
                .overlay(
                    Text("Select your story")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                )
            LazyVGrid(columns: columns,
                      spacing: 0,
                      //this pinnedViews help to stay  we are on which section it will stick to top until we move to next
                      pinnedViews: [.sectionHeaders],
                      content: {
                            Section(header:
                                        Text("Photos")
                                            .foregroundStyle(.black)
                                            .font(.title)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .background(.blue)
                                            .padding(.horizontal)
                ){
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(Color.white)
                            .cornerRadius(10)
                            .frame(width:120, height:120)
                            .shadow(color: .black, radius: 5, x:0.0, y:6.9)
                    }
                }
                .padding()
                Section(header:
                            Text("Videos")
                                .foregroundStyle(.black)
                                .font(.title)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(.blue)
                                .padding(.horizontal)
    ){
        ForEach(0..<20) { index in
            Rectangle()
                .fill(Color.white)
                .cornerRadius(10)
                .frame(width:120, height:120)
                .shadow(color: .black, radius: 5, x:0.0, y:6.9)
        }
    }
    .padding()
            })
           

        }
    }
}

#Preview {
    LazyGrid()
}
