//
//  CupertinoWeather.swift
//  WeatherApp
//
//  Created by Harsh Makwana on 5/28/25.
//

import SwiftUI

struct CupertinoWeather: View {
    @State private var isNight: Bool = false
    var body: some View {
        
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                
                VStack(spacing: 0) {
                    MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: isNight ? 60 : 76)
                    
                }
                .padding(.bottom, 40)
                
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "Tue", imageName: "cloud.sun.fill", temperature: 70)
                    
                    WeatherDayView(dayOfWeek: "Wed", imageName: "sun.max.fill", temperature: 80)
                    
                    WeatherDayView(dayOfWeek: "Thu", imageName: "wind.snow", temperature: 55)
                    
                    WeatherDayView(dayOfWeek: "Fri", imageName: "sunset.fill", temperature: 60)
                    
                    WeatherDayView(dayOfWeek: "Sat", imageName: "snow", temperature: 25)
                    
                }
                
                Spacer()
                
                Button{
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
                    
                }
                Spacer()
                
                
            }
            
        }
    }
}






#Preview {
    CupertinoWeather()
}
