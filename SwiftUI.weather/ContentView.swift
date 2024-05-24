//
//  ContentView.swift
//  SwiftUI.weather
//
//  Created by Dmitrii Eselidze on 03.05.2024.
//


import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var daysOfWeek = ["MON","TUE","WED","THU","FRI","SAT","SUN"]
    
    var body: some View {
        ZStack{
            BackgroundView(isNight: $isNight)
            VStack{
                CityTextView(cityName: "Berlin, BL")
                
                MainWeatherStatusView(imageName: isNight ? "moon.zzz.fill":"cloud.hail.fill", 
                                      temperature: 3)
                
                HStack(spacing:10){
                    WeatherDayView(dayOfWeek: daysOfWeek[1],
                                   imageName: "cloud.rain.fill",
                                   temperature: 8)
                    WeatherDayView(dayOfWeek: daysOfWeek[2],
                                   imageName: "cloud.fog.fill",
                                   temperature: 10)
                    WeatherDayView(dayOfWeek: daysOfWeek[3],
                                   imageName: "cloud.fog.fill",
                                   temperature: 8)
                    WeatherDayView(dayOfWeek: daysOfWeek[4],
                                   imageName: "cloud.sun.fill",
                                   temperature: 13)
                    WeatherDayView(dayOfWeek: daysOfWeek[5],
                                   imageName: "cloud.rain.fill",
                                   temperature: 6)
                    
                }
                Spacer()
                
                Button{
                    print("tapped")
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time", 
                                  textColor: .blue,
                                  backgroundColor: .white)
                }
                Spacer()
            }

        }
    }
}

#Preview {
    ContentView()
}



struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, 
                              weight: .medium,
                              design: .default))
                .foregroundColor(.white)
                .padding()
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)")
                .font(.system(size: 28, 
                              weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue,
                                                   isNight ? .gray : Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct CityTextView: View{
    
    var cityName: String
    
    var body: some View{
        Text(cityName)
            .font(.system(size: 32, weight: .medium, 
                          design: .default))
            .foregroundColor(.white)
            .padding()
    }
}


struct MainWeatherStatusView:View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing:8){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)")
                .font(.system(size: 70, 
                              weight: .medium))
                .foregroundColor(.white)
            
        }
        .padding(.bottom, 40)
    }
}



