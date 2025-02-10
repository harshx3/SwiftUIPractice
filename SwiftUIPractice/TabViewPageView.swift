//
//  TabViewPageView.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 2/5/25.
//

import SwiftUI

struct TabViewPageView: View {
    @State private var selectedTab: Int = 0
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    var body: some View {
//            HomeView()
//            
//            Text("Home Tab")
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//            Text("Browse Tab")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//            Text("Profile Tab")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
        
        //to add active tab color
//        .accentColor(.red)
        
//        TabView(selection: $selectedTab) {
//            Tab(value:0) {
//                HomeView(selectedTab: $selectedTab)
//            } label: {
//                Image(systemName: "house.fill")
//            }
//            Tab(value:1) {
//                Text("Browse")
//            } label: {
//                Image(systemName: "globe")
//            }
//            Tab(value:2) {
//                Text("Profile")
//            } label: {
//                Image(systemName: "person.fill")
//            }
//        }
//        .tint(.red)
        
        TabView {
//            RoundedRectangle(cornerRadius: 20)
//                .foregroundStyle(.red)
//            RoundedRectangle(cornerRadius: 20)
//            RoundedRectangle(cornerRadius: 20)
//                .foregroundStyle(.green)
            ForEach(icons, id:\.self) {
                icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(
            RadialGradient(
                gradient: SwiftUI.Gradient(colors: [SwiftUI.Color.red, SwiftUI.Color.blue]),
                center: .center,
                startRadius: 5,
                endRadius: 300
            )
        )
        .cornerRadius(20)
        .padding(.horizontal)
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        
    }
}

#Preview {
    TabViewPageView()
}

struct HomeView: View {
    @Binding var selectedTab : Int
    var body: some View {
        ZStack {
            Color.red
            
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go to Profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(10)
                })
            }
            
       
            
            
        }
    }
}
