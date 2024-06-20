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
            .frame(width: 320, height: 50)
            .background(backgroundColor.gradient)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold))
            .cornerRadius(10)
    }
}

struct WeatherButton_Previews: PreviewProvider{
    static var previews: some View{
        WeatherButton(title: "Test Title",
                      textColor: .white,
                      backgroundColor: .blue)
    }
}
