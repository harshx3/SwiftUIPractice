//
//  MainWeatherStatusView.swift
//  WeatherApp
//
//  Created by Harsh Makwana on 5/28/25.
//

import SwiftUI

struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    var body: some View {
        Image(systemName: imageName)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width:180, height:180)
        
        Text("\(temperature)°")
            .font(.system(size: 70, weight: .medium))
            .foregroundStyle(.white)
    }
}

#Preview {
    MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 90)
}
