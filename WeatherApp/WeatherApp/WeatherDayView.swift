//
//  WeatherDayView.swift
//  WeatherApp
//
//  Created by Harsh Makwana on 5/28/25.
//

import SwiftUI

struct WeatherDayView: View {
    

        var dayOfWeek: String
        var imageName: String
        var temperature: Int
        
        var body: some View {
            VStack() {
                Text(dayOfWeek)
                    .font(.system(size: 26, weight: .medium))
                    .foregroundStyle(.white)
                Image(systemName: imageName)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                Text("\(temperature)°")
                    .font(.system(size: 26, weight: .medium))
                    .foregroundStyle(.white)
            }
        }
    
}

#Preview {
    WeatherDayView(dayOfWeek: "Mon", imageName: "cloud.sun.fill", temperature: 71)
}
