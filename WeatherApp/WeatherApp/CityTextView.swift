//
//  CityTextView.swift
//  WeatherApp
//
//  Created by Harsh Makwana on 5/28/25.
//

import SwiftUI

struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .monospaced))
            .foregroundStyle(.white)
            .padding(.top, 15)
    }
}

#Preview {
    CityTextView(cityName: "Cupertino, CA")
}
