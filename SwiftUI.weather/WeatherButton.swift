//
//  WeatherButton.swift
//  SwiftUI.weather
//
//  Created by Dmitrii Eselidze on 03.05.2024.
//
import SwiftUI

struct WeatherButton:View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 200, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
