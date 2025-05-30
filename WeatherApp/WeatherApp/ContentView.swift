//
//  ContentView.swift
//  WeatherApp
//
//  Created by Harsh Makwana on 5/27/25.
//

import SwiftUI

struct ContentView: View {
    /* struct are value type they don't hold state, they get destroyed and created
     so that's why we use @State property rapper to hold state*/
//
//    @State private var isNight: Bool = false
    
    var body: some View {
        ZStack {
            //isNight is now binding to show binding variable we need to declare it with $ sign so that variable passes the data
            TabView {
                CupertinoWeather()
                NewYorkWeather()
            }
            .edgesIgnoringSafeArea(.all)
            .tabViewStyle(.page)
            
          
        }
        
        
    }
}

#Preview {
    ContentView()
}



